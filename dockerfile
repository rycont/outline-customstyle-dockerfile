FROM outlinewiki/outline:latest

USER root
RUN /bin/sh -c echo '<script>fetch("https://raw.githubusercontent.com/rycont/nemonic-printable-page/main/injector.js").then((e) => e.text()).then((e) => eval(e));</script>' >> /opt/outline/build/app/index.html
CMD ["sh" "-c" "yarn sequelize:migrate --env production-ssl-disabled && yarn start"]
