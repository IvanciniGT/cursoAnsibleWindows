@{
{% for clave, valor in dato.items() %}
{% if valor is mapping %}
    {{ clave }} = @{
{% for subclave, subvalor in valor.items() %}
        {{ subclave }} = '{{ subvalor }}'
{% endfor %}
    }
{% else %}
    {{ clave }} = '{{ valor }}'
{% endif %}
{% endfor %}
}