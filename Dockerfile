FROM manimcommunity/manim:v0.18.1

# Aseguramos que el usuario pueda escribir en /home/usuario
USER root
RUN chown -R manimuser:manimuser /home/manimuser

# Copiamos tu proyecto al home del usuario (donde Jupyter lo verá)
COPY --chown=manimuser:manimuser . /home/manimuser/

# Volvemos al usuario normal
USER manimuser
WORKDIR /home/manimuser
