from django.contrib import admin

from saude.models import *

class MedicoAdmin(admin.ModelAdmin):
    list_display = ['crm' ,'nome', 'displayEspecialidade', 'displayTrabalha']

class PostoDeSaudeAdmin(admin.ModelAdmin):
    list_display = ['id' ,'nome', 'bairro', 'cidade', 'rua', 'telefone']

class EspecialidadeAdmin(admin.ModelAdmin):
    pass


admin.site.register(Medico, MedicoAdmin)
admin.site.register(PostoDeSaude, PostoDeSaudeAdmin)
admin.site.register(Especialidade, EspecialidadeAdmin)
# admin.site.register(Medico)
# admin.site.register(Especialidade)
admin.site.register(Estado)
admin.site.register(Bairro)
# admin.site.register(PostoDeSaude)
admin.site.register(Cidade)


