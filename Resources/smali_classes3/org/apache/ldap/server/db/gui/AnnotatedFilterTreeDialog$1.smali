.class final Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog$1;
.super Ljava/awt/event/WindowAdapter;
.source "AnnotatedFilterTreeDialog.java"


# instance fields
.field final synthetic this$0:Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;


# direct methods
.method constructor <init>(Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/awt/event/WindowAdapter;-><init>()V

    .line 1
    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog$1;->this$0:Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;

    return-void
.end method


# virtual methods
.method public windowClosing(Ljava/awt/event/WindowEvent;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog$1;->this$0:Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;

    invoke-static {v0, p1}, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->access$0(Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;Ljava/awt/event/WindowEvent;)V

    return-void
.end method
