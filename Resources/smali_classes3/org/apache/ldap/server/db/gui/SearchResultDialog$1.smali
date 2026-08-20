.class final Lorg/apache/ldap/server/db/gui/SearchResultDialog$1;
.super Ljava/awt/event/WindowAdapter;
.source "SearchResultDialog.java"


# instance fields
.field final synthetic this$0:Lorg/apache/ldap/server/db/gui/SearchResultDialog;


# direct methods
.method constructor <init>(Lorg/apache/ldap/server/db/gui/SearchResultDialog;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/awt/event/WindowAdapter;-><init>()V

    .line 1
    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/SearchResultDialog$1;->this$0:Lorg/apache/ldap/server/db/gui/SearchResultDialog;

    return-void
.end method


# virtual methods
.method public windowClosing(Ljava/awt/event/WindowEvent;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/SearchResultDialog$1;->this$0:Lorg/apache/ldap/server/db/gui/SearchResultDialog;

    invoke-static {v0, p1}, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->access$0(Lorg/apache/ldap/server/db/gui/SearchResultDialog;Ljava/awt/event/WindowEvent;)V

    return-void
.end method
