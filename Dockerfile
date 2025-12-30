# Usando a imagem oficial do Chatwoot Rails
FROM ghcr.io/fazer-ai/chatwoot:latest

# Define diretório de trabalho
WORKDIR /app

# Copia o entrypoint do Chatwoot (já presente na imagem)
ENTRYPOINT ["docker/entrypoints/rails.sh"]

# Expondo a porta 3000 (Railway detecta automaticamente)
EXPOSE 3000

# Comando padrão para iniciar Rails
CMD ["bundle", "exec", "rails", "s", "-p", "3000", "-b", "0.0.0.0"]
