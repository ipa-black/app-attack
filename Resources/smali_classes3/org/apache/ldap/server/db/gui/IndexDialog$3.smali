.class final Lorg/apache/ldap/server/db/gui/IndexDialog$3;
.super Ljava/lang/Object;
.source "IndexDialog.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field final synthetic this$0:Lorg/apache/ldap/server/db/gui/IndexDialog;


# direct methods
.method constructor <init>(Lorg/apache/ldap/server/db/gui/IndexDialog;)V
    .locals 0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/IndexDialog$3;->this$0:Lorg/apache/ldap/server/db/gui/IndexDialog;

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 2

    .line 256
    iget-object p1, p0, Lorg/apache/ldap/server/db/gui/IndexDialog$3;->this$0:Lorg/apache/ldap/server/db/gui/IndexDialog;

    .line 257
    invoke-static {p1}, Lorg/apache/ldap/server/db/gui/IndexDialog;->access$1(Lorg/apache/ldap/server/db/gui/IndexDialog;)Ljavax/swing/JTextField;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/swing/JTextField;->getText()Ljava/lang/String;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/IndexDialog$3;->this$0:Lorg/apache/ldap/server/db/gui/IndexDialog;

    invoke-static {v1}, Lorg/apache/ldap/server/db/gui/IndexDialog;->access$2(Lorg/apache/ldap/server/db/gui/IndexDialog;)Ljavax/swing/JComboBox;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/swing/JComboBox;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 256
    invoke-virtual {p1, v0, v1}, Lorg/apache/ldap/server/db/gui/IndexDialog;->doScan(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
