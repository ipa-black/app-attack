.class final Lorg/apache/ldap/server/db/gui/SearchResultDialog$2;
.super Ljava/lang/Object;
.source "SearchResultDialog.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field final synthetic this$0:Lorg/apache/ldap/server/db/gui/SearchResultDialog;


# direct methods
.method constructor <init>(Lorg/apache/ldap/server/db/gui/SearchResultDialog;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/SearchResultDialog$2;->this$0:Lorg/apache/ldap/server/db/gui/SearchResultDialog;

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 1

    .line 104
    iget-object p1, p0, Lorg/apache/ldap/server/db/gui/SearchResultDialog$2;->this$0:Lorg/apache/ldap/server/db/gui/SearchResultDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->setVisible(Z)V

    .line 105
    iget-object p1, p0, Lorg/apache/ldap/server/db/gui/SearchResultDialog$2;->this$0:Lorg/apache/ldap/server/db/gui/SearchResultDialog;

    invoke-virtual {p1}, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->dispose()V

    return-void
.end method
