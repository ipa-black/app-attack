.class final Lorg/apache/ldap/server/db/gui/AddEntryDialog$1;
.super Ljava/awt/event/WindowAdapter;
.source "AddEntryDialog.java"


# instance fields
.field final synthetic this$0:Lorg/apache/ldap/server/db/gui/AddEntryDialog;


# direct methods
.method constructor <init>(Lorg/apache/ldap/server/db/gui/AddEntryDialog;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/awt/event/WindowAdapter;-><init>()V

    .line 1
    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AddEntryDialog$1;->this$0:Lorg/apache/ldap/server/db/gui/AddEntryDialog;

    return-void
.end method


# virtual methods
.method public windowClosing(Ljava/awt/event/WindowEvent;)V
    .locals 0

    .line 81
    iget-object p1, p0, Lorg/apache/ldap/server/db/gui/AddEntryDialog$1;->this$0:Lorg/apache/ldap/server/db/gui/AddEntryDialog;

    invoke-static {p1}, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->access$1(Lorg/apache/ldap/server/db/gui/AddEntryDialog;)V

    return-void
.end method
