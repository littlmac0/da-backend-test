//fiddle: https://jsfiddle.net/m7xs32dp/3/
(function($){
    const $tbody = $('#company-data-table tbody');

    const fillTable = () => {
        $tbody.html('');
        let createCell = (classes, content) => {
            let $cell = $('<td class="cell"></td>');
            $.each(classes, (cdx, className) => {
                $cell.addClass(className);
            });
            $cell.text(content);
            return $cell;
        };
        data.forEach(company => {
            let row = $('<tr></tr>');
            let $companyName = createCell(['company-name'], company.company_name);
            let $companyId = createCell(['company-id'], company.company_id);
            let $companyPhone = createCell(['company-phone'], company.company_phone);
            let $companyEmail = createCell(['company-email'], company.company_email);
            $row.append($companyName);
            $row.append($companyId);
            $row.append($companyPhone);
            $row.append($companyEmail);
            $tbody.append($row);
        });
    };

    $(document).ready(fillTable);
})(jQuery);