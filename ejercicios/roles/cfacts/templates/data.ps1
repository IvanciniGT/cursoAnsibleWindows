@{
{% for clave, valor in item.data.items() %}
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
