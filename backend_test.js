//fiddle: https://jsfiddle.net/4gqh0z2b/2/

const tbody = document.querySelector('#company-data-table tbody');

const fillTable = () => {
    tbody.innerHTML = '';
    let createCell = (classes, content) => {
        let cell = document.createElement('td');
        cell.classList.add('cell');
        cell.classList.add(...classes);
        cell.textContent = content;
        return cell;
    };
    data.forEach(company => {
        let row = document.createElement('tr');
        let companyName = createCell(['company-name'], company.company_name);
        let companyId = createCell(['company-id'], company.company_id);
        let companyPhone = createCell(['company-phone'], company.company_phone);
        let companyEmail = createCell(['company-email'], company.company_email);
        row.appendChild(companyName);
        row.appendChild(companyId);
        row.appendChild(companyPhone);
        row.appendChild(companyEmail);
        tbody.appendChild(row);
    });
};

document.addEventListener('DOMContentLoaded', fillTable);