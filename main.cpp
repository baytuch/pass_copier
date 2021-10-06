
#include <QApplication>
#include <QClipboard>
#include <QGuiApplication>
#include <QFile>
#include <QString>


int main(int argc, char *argv[]) {

  QApplication app(argc, argv);

  QClipboard *clipboard = QGuiApplication::clipboard();

  QString pass;
  QFile file(app.arguments().at(1));
  if (file.open(QIODevice::ReadOnly | QIODevice::Text)) {
    pass = file.readLine();
    pass = pass.remove(QRegExp("[ |\r|\n]"));
  }

  clipboard->setText(pass);
}

