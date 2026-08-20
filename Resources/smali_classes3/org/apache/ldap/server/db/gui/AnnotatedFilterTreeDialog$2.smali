.class final Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog$2;
.super Ljava/lang/Object;
.source "AnnotatedFilterTreeDialog.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field final synthetic this$0:Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;


# direct methods
.method constructor <init>(Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog$2;->this$0:Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 1

    .line 91
    iget-object p1, p0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog$2;->this$0:Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->setVisible(Z)V

    .line 92
    iget-object p1, p0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog$2;->this$0:Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;

    invoke-virtual {p1}, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->dispose()V

    return-void
.end method
