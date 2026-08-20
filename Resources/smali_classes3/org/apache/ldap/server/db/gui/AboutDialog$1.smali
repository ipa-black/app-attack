.class final Lorg/apache/ldap/server/db/gui/AboutDialog$1;
.super Ljava/awt/event/WindowAdapter;
.source "AboutDialog.java"


# instance fields
.field final synthetic this$0:Lorg/apache/ldap/server/db/gui/AboutDialog;


# direct methods
.method constructor <init>(Lorg/apache/ldap/server/db/gui/AboutDialog;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/awt/event/WindowAdapter;-><init>()V

    .line 1
    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AboutDialog$1;->this$0:Lorg/apache/ldap/server/db/gui/AboutDialog;

    return-void
.end method


# virtual methods
.method public windowClosing(Ljava/awt/event/WindowEvent;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/AboutDialog$1;->this$0:Lorg/apache/ldap/server/db/gui/AboutDialog;

    invoke-static {v0, p1}, Lorg/apache/ldap/server/db/gui/AboutDialog;->access$0(Lorg/apache/ldap/server/db/gui/AboutDialog;Ljava/awt/event/WindowEvent;)V

    return-void
.end method
