FROM frappe/erpnext:v16.34.2

USER frappe
WORKDIR /home/frappe/frappe-bench

RUN bench get-app --skip-assets https://github.com/dachramm/agropeople_theme.git --branch main
RUN bench build --app agropeople_theme
