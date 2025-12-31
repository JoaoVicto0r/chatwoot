# Dockerfile para deploy do Chatwoot Rails no Railway

# Usando a imagem oficial do Chatwoot
FROM ghcr.io/fazer-ai/chatwoot:latest

# Diretório de trabalho
WORKDIR /app

# Expõe a porta 3000 para que Railway detecte
EXPOSE 3000

# Variáveis de ambiente padrão (opcional, podem ser sobrescritas pelo Railway)
ENV NODE_ENV=production \
    RAILS_ENV=production \
    INSTALLATION_ENV=docker \
    DEFAULT_LOCALE=pt_BR \
    PORT=3000 \
    BIND=0.0.0.0

# Instala gems caso necessário (opcional, a imagem já vem com bundle install)
# COPY Gemfile* ./
# RUN bundle install

# Copia o restante do código caso queira customizar algo
# COPY . .

# Comando para iniciar o Rails diretamente
CMD ["bundle", "exec", "rails", "s", "-p", "3000", "-b", "0.0.0.0"]
