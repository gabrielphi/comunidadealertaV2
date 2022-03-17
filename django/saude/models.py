from django.db import models
from django.urls import reverse

# Create your models here.

class Estado(models.Model):
    """Modelo de estado"""
    nome = models.CharField(max_length=200, null=False, blank=False, primary_key=True, help_text='Nome do estado')

    def __str__(self):
        return self.nome

class Especialidade(models.Model):
    """Model Especialidade"""
    id = models.AutoField(primary_key=True)
    nome = models.CharField(max_length=200, null=False, blank=False, help_text="Nome da especialidade")

    def __str__(self):
        return self.nome

class Cidade(models.Model):
    """Model Cidade"""
    nome = models.CharField(max_length=200, null=False, blank=False, primary_key=True, help_text='Nome da cidade')
    estado = models.ForeignKey(Estado, on_delete=models.SET_NULL, null=True)
    
    def __str__(self):
        return self.nome
class Bairro(models.Model):
    """Model Bairro"""
    id = models.AutoField(primary_key=True)
    nome = models.CharField(max_length=200, null=False, blank=False, help_text='Nome do bairro')
    cidade = models.ForeignKey(Cidade, on_delete=models.SET_NULL, null=True)

    def __str__(self):
        return self.nome


class PostoDeSaude(models.Model):
    """Model posto"""
    id = models.AutoField(primary_key=True)
    nome = models.CharField(max_length=200, null=False, blank=False, help_text='Nome do posto')
    cidade = models.ForeignKey(Cidade, on_delete=models.SET_NULL, null=True)
    bairro = models.ForeignKey(Bairro, on_delete=models.SET_NULL, null=True)
    rua = models.CharField(max_length=200, null=False, blank=False, help_text='Nome da rua')
    telefone = models.CharField(max_length=100, blank=True, null=True, help_text="Telefone do posto")
    
    def __str__(self):
        return self.nome

class Medico(models.Model):
    """Model Medico"""
    crm = models.CharField(primary_key=True, max_length=20, null=False, blank=False, help_text='CRM do medico')
    nome = models.CharField(max_length=200, null=False, blank=False, help_text='Nome do medico')
    especialidade = models.ManyToManyField(Especialidade)
    trabalha = models.ManyToManyField(PostoDeSaude)
    
    def __str__(self):
        return self.nome

    def displayTrabalha(self):
        return ', '.join(trabalha.nome for trabalha in self.trabalha.all()[:3])
    
    displayTrabalha.short_description = 'Trabalha em'

    def displayEspecialidade(self):
        return ', '.join(especialidade.nome for especialidade in self.especialidade.all()[:3])
    
    displayEspecialidade.short_description = 'Especialidade'

    def get_absolute_url(self):
        """Retorna detalhes do medico"""
        return reverse('medico-info', args=[str(self.id)])