.class final Lorg/apache/ldap/server/db/gui/EntryDialog$1;
.super Ljava/awt/event/WindowAdapter;
.source "EntryDialog.java"


# instance fields
.field final synthetic this$0:Lorg/apache/ldap/server/db/gui/EntryDialog;


# direct methods
.method constructor <init>(Lorg/apache/ldap/server/db/gui/EntryDialog;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/awt/event/WindowAdapter;-><init>()V

    .line 1
    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/EntryDialog$1;->this$0:Lorg/apache/ldap/server/db/gui/EntryDialog;

    return-void
.end method


# virtual methods
.method public windowClosing(Ljava/awt/event/WindowEvent;)V
    .locals 0

    .line 79
    iget-object p1, p0, Lorg/apache/ldap/server/db/gui/EntryDialog$1;->this$0:Lorg/apache/ldap/server/db/gui/EntryDialog;

    invoke-static {p1}, Lorg/apache/ldap/server/db/gui/EntryDialog;->access$0(Lorg/apache/ldap/server/db/gui/EntryDialog;)V

    return-void
.end method
