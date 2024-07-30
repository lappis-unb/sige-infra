# SIGE-INFRA - Infraestrutura como Código (IaC)

![](media/capa_fundo_branco.svg)


Este projeto utiliza Terraform, Ansible e GitLab CI para automatizar o provisionamento e a gestão da infraestrutura na 
nuvem Digital Ocean. O projeto é dividido em várias etapas que garantem a criação, configuração e destruição dos recursos
 de forma controlada e reprodutível.

## Componentes

- **Terraform**: Usado para provisionar os servidores e outros recursos na Digital Ocean.
- **Ansible**: Aplica configurações específicas aos servidores provisionados, como instalação e configuração de softwares.
- **GitLab CI**: Automatiza o processo de CI/CD, utilizando runners do GitLab para executar os scripts de Terraform e Ansible.

## Provisionando local  

1. Clone o repositório:
```
git clone https://gitlab.com/lappis-unb/projetos-energia/SIGE/sige-infra
```

2. Exportar as credenciais da Digital Ocean"
```
export DIGITALOCEAN_TOKEN="seu_token_aqui"
```

### Provisionando a Infraestrutura
```
cd terraform
terraform init
terraform plan
terraform apply
```

### Configurando a Infraestrutura com Ansible

```
cd ansible
ansible-playbook -i hosts playbook.yml
```

### Destruindo a Infraestrutura

```
cd terraform
terraform destroy
```
