.class final Lorg/apache/ldap/server/db/gui/FilterDialog$1;
.super Ljava/awt/event/WindowAdapter;
.source "FilterDialog.java"


# instance fields
.field final synthetic this$0:Lorg/apache/ldap/server/db/gui/FilterDialog;


# direct methods
.method constructor <init>(Lorg/apache/ldap/server/db/gui/FilterDialog;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/awt/event/WindowAdapter;-><init>()V

    .line 1
    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/FilterDialog$1;->this$0:Lorg/apache/ldap/server/db/gui/FilterDialog;

    return-void
.end method


# virtual methods
.method public windowClosing(Ljava/awt/event/WindowEvent;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/FilterDialog$1;->this$0:Lorg/apache/ldap/server/db/gui/FilterDialog;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/db/gui/FilterDialog;->closeDialog(Ljava/awt/event/WindowEvent;)V

    return-void
.end method
