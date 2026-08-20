.class final Lorg/apache/ldap/server/db/gui/AboutDialog$2;
.super Ljava/lang/Object;
.source "AboutDialog.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field final synthetic this$0:Lorg/apache/ldap/server/db/gui/AboutDialog;


# direct methods
.method constructor <init>(Lorg/apache/ldap/server/db/gui/AboutDialog;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AboutDialog$2;->this$0:Lorg/apache/ldap/server/db/gui/AboutDialog;

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 1

    .line 134
    iget-object p1, p0, Lorg/apache/ldap/server/db/gui/AboutDialog$2;->this$0:Lorg/apache/ldap/server/db/gui/AboutDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/ldap/server/db/gui/AboutDialog;->setVisible(Z)V

    .line 135
    iget-object p1, p0, Lorg/apache/ldap/server/db/gui/AboutDialog$2;->this$0:Lorg/apache/ldap/server/db/gui/AboutDialog;

    invoke-virtual {p1}, Lorg/apache/ldap/server/db/gui/AboutDialog;->dispose()V

    return-void
.end method
