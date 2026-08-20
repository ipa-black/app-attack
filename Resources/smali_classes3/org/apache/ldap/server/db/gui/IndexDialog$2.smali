.class final Lorg/apache/ldap/server/db/gui/IndexDialog$2;
.super Ljava/lang/Object;
.source "IndexDialog.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field final synthetic this$0:Lorg/apache/ldap/server/db/gui/IndexDialog;


# direct methods
.method constructor <init>(Lorg/apache/ldap/server/db/gui/IndexDialog;)V
    .locals 0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/IndexDialog$2;->this$0:Lorg/apache/ldap/server/db/gui/IndexDialog;

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 0

    .line 227
    iget-object p1, p0, Lorg/apache/ldap/server/db/gui/IndexDialog$2;->this$0:Lorg/apache/ldap/server/db/gui/IndexDialog;

    invoke-static {p1}, Lorg/apache/ldap/server/db/gui/IndexDialog;->access$0(Lorg/apache/ldap/server/db/gui/IndexDialog;)V

    return-void
.end method
