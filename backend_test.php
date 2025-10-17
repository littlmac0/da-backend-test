<?php

try {
    require_once __DIR__ . '/vendor/autoload.php';
    $loader = new \Twig\Loader\FilesystemLoader(__DIR__ . '/templates');
    $twig = new \Twig\Environment($loader);

    $companyFile = __DIR__ . '/companies.json';
    $companyEmployeeFile = __DIR__ . '/company_employees.json';

    if (!is_file($companyFile) || !is_file($companyEmployeeFile)) {
        throw new Exception('Missing files');
    }

    $companies = json_decode(file_get_contents($companyFile), true);
    $companyEmployees = json_decode(file_get_contents($companyEmployeeFile), true);

    $companyEmployeeMap = [];

    foreach ($companies['companies'] as $company) {
        $companyId = $company['company_id'];
        $companyEmployeeMap[$companyId] = [];
        $companyEmployeeMap[$companyId]['info'] = $company;
        $companyEmployeeMap[$companyId]['employees'] = [];
    }

    foreach ($companyEmployees['employees'] as $companyEmployee) {
        $companyId = $companyEmployee['company_id'];
        $companyEmployeeMap[$companyId]['employees'][] = $companyEmployee;
    }

    $html = $twig->render('index.html.twig', ['companyEmployeeMap' => $companyEmployeeMap]);
}
catch (Exception $e) {
    $log = __DIR__ . '/error.log';
    $logLine = date('Y-m-d H:i:s') . ' - ' . $e->getMessage() . " [file: \"{$e->getFile()}\", line: {$e->getLine()}]";
    file_put_contents($log, $logLine . "\n", FILE_APPEND);
    http_response_code(400);
    $html = '<div class="error">There was an error loading the data.</div>';
}
echo $html;