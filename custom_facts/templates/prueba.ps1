
#echo "ANTES_{{ VARIABLE_PLANTILLA }}_DESPUES"

$VERSION = '{{ VARIABLE_PLANTILLA }}'

@{
    dato1 = 'valor 1'
    dato2 = @{
        subdato1 = 'subvalor 1'
        subdato2 = $VERSION
    }
}