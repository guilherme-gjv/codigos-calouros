#include <stdio.h>

void menu();
void registrarNotas();
void verNotas();
void verMedia();

float NA921[36][4];

int main()
{

    menu();
}
void menu()
{
    int decisao = 0;

    while (decisao != 4)
    {

        printf("\nBem vindo ao Sistema de Alunos da turma 921!");
        printf("\nCaso queira:");
        printf("\n1 - Registar Notas\n2 - Ver Notas\n3 - Ver Medias\n4 - Sair\n");
        printf("Qual opção voce deseja? ");
        scanf("%i", &decisao);

        switch (decisao)
        {
        case 1:
            registrarNotas();
            break;
        case 2:
            verNotas();
            break;
        case 3:
            verMedia();
            break;
        case 4:
            printf("\n\nSaindo do sistema...\n");
            break;
        }
    }
}

void registrarNotas()
{
    int op = 0;
    int x, y, n;

    printf("\nO que voce deseja?");
    printf("\n1. Registar as notas dos 4 bimestres de todos os alunos\n2. Registrar as notas dos 4 bimestres de um aluno em especifico\n");
    printf("Digite...");
    scanf("%i", &op);

    if (op == 1)
    {
        for (y = 0; y <= 3; y++)
        {
            for (x = 0; x <= 35; x++)
            {
                printf("Digite a nota do %i ° bimestre do %i ° aluno da chamada.", y + 1, x + 1);
                scanf("%f", &NA921[x][y]);
            }
        }
    }
    if (op == 2)
    {
        printf("\nDigite o numero do aluno na chamada: ");
        scanf("%i", &n);
        for (y = 0; y <= 3; y++)
        {
            printf("Digite a nota do %i ° bimestre do %i ° aluno da chamada.", y + 1, n);
            scanf("%f", &NA921[n - 1][y]);
        }
    }
}

void verNotas()
{
    int op = 0;
    int x, y, n, i;

    printf("\nO que você deseja?");
    printf("\n1. Ver as notas dos 4 bimestres de todos os alunos\n2. Ver as notas dos 4 bimestres de um aluno em especifico\n");
    printf("Digite...");
    scanf("%i", &op);

    if (op == 1)
    {
        for (x = 0; x <= 3; x++)
        {
            for (y = 0; y <= 35; y++)
            {
                printf("\nA nota do %i° bimestre do %i° aluno da chamada é %f.", x + 1, y + 1, NA921[y][x]);
            }
        }
    }
    if (op == 2)
    {
        printf("\nDigite o numero do aluno na chamada: ");
        scanf("%i", &n);
        for (i = 0; i <= 3; i++)
        {
            printf("\nA nota do %i° biemste do aluno é: %f", i + 1, NA921[n - 1][i]);
        }
    }
}

void verMedia()
{
    float soma_notas[36], media[36];
    int op = 0;
    int x, n, i;

    printf("\nO que você deseja?");
    printf("\n1. Ver as Medias de todos os alunos\n2. Ver a Media de um aluno em específico\n");
    printf("Digite...");
    scanf("%i", &op);

    for (i = 0; i <= 35; i++)
    {
        for (x = 0; x <= 3; x++)
        {
            soma_notas[i] = soma_notas[i] + NA921[i][x];
        }
    }
    for (i = 0; i <= 35; i++)
    {
        media[i] = soma_notas[i] / 4;
    }

    if (op == 1)
    {
        for (i = 0; i <= 35; i++)
        {
            printf("\nA Media do %i° aluno da chamada é: %f ", i + 1, media[i]);
        }
    }

    if (op == 2)
    {
        printf("\nDigite o numero do aluno na chamada: ");
        scanf("%i", &n);
        n = n - 1;
        for (i = 0; i < 1; i++)
        {
            printf("\nA Media do %i° aluno da chamada é: %f", n, media[n]);
        }
    }
}