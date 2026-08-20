.class final Lorg/apache/ldap/server/db/gui/IndexDialog$1;
.super Ljava/awt/event/WindowAdapter;
.source "IndexDialog.java"


# instance fields
.field final synthetic this$0:Lorg/apache/ldap/server/db/gui/IndexDialog;


# direct methods
.method constructor <init>(Lorg/apache/ldap/server/db/gui/IndexDialog;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/awt/event/WindowAdapter;-><init>()V

    .line 1
    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/IndexDialog$1;->this$0:Lorg/apache/ldap/server/db/gui/IndexDialog;

    return-void
.end method


# virtual methods
.method public windowClosing(Ljava/awt/event/WindowEvent;)V
    .locals 0

    .line 84
    iget-object p1, p0, Lorg/apache/ldap/server/db/gui/IndexDialog$1;->this$0:Lorg/apache/ldap/server/db/gui/IndexDialog;

    invoke-static {p1}, Lorg/apache/ldap/server/db/gui/IndexDialog;->access$0(Lorg/apache/ldap/server/db/gui/IndexDialog;)V

    return-void
.end method
