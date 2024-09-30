Tipos de dados
Boleanos
Caractere
Números
Temporais

Boleanos
Inicializado como nulo, e pode receber tanto 1 como 0.

Caractere
Tamanho fixo - char permite inserir até uma quantidade fixa de caracters e sempre ocupa todo o espaço reservado
Tamanho variáveis - varchar ou nvarchar, permite inserir até uma quantidade que for definida, porém só usa o espaço que for preenchido.

Números
Valores exatos 
TINYINT não tem parte valor fracionado (ex: 1.43, 24.23), somente 1,123123,324234,313123, etc...begin
SMALLINT - mesma coisa, porém limite maior
INT - mesma coisa, porém limite maior
BIGINT - memsma coisa, porém limite ainda maior   

Numérico decimal
Valores exatos, porém permite ter parte fracionados, que também pode ser especificado a precisão
e escala (escala é o número de digitos na parte fracional) ex: (5,2) 113,2

Valores Aproximados
Real - Precisão aproximada de até 15 dígitos
Float - Mesmo conceito do Real, porém com vírgula

Temporais
DATE - Armazena data no formato aaaa/mm/dd 
DATETIME - Armazena data e hora no formato aaaa/mm/ddhh:mm:ss
DATETIME2 - Além do formato acima armazena os milissegundos aaaa/mm/ddhh:mm:ssssss
SMALLDATETIME - data e hora, respeitando os limites entre '1900-01-01:00:00:00' até '2079-06-06:23:59:59'
TIME armazena apenas hora. 
DATETIMEOFFSET - permite armazenar informações de data e hora incluindo fuso horário.



