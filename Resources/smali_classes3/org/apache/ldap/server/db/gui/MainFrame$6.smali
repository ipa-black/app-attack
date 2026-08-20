.class final Lorg/apache/ldap/server/db/gui/MainFrame$6;
.super Ljava/lang/Object;
.source "MainFrame.java"

# interfaces
.implements Ljavax/swing/event/TreeSelectionListener;


# instance fields
.field final synthetic this$0:Lorg/apache/ldap/server/db/gui/MainFrame;


# direct methods
.method constructor <init>(Lorg/apache/ldap/server/db/gui/MainFrame;)V
    .locals 0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/MainFrame$6;->this$0:Lorg/apache/ldap/server/db/gui/MainFrame;

    return-void
.end method


# virtual methods
.method public valueChanged(Ljavax/swing/event/TreeSelectionEvent;)V
    .locals 2

    .line 245
    invoke-virtual {p1}, Ljavax/swing/event/TreeSelectionEvent;->getNewLeadSelectionPath()Ljavax/swing/tree/TreePath;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 252
    :cond_0
    invoke-virtual {p1}, Ljavax/swing/tree/TreePath;->getLastPathComponent()Ljava/lang/Object;

    move-result-object p1

    .line 255
    :try_start_0
    instance-of v0, p1, Lorg/apache/ldap/server/db/gui/EntryNode;

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame$6;->this$0:Lorg/apache/ldap/server/db/gui/MainFrame;

    move-object v1, p1

    check-cast v1, Lorg/apache/ldap/server/db/gui/EntryNode;

    invoke-virtual {v1}, Lorg/apache/ldap/server/db/gui/EntryNode;->getEntryId()Ljava/math/BigInteger;

    move-result-object v1

    .line 258
    check-cast p1, Lorg/apache/ldap/server/db/gui/EntryNode;

    invoke-virtual {p1}, Lorg/apache/ldap/server/db/gui/EntryNode;->getLdapEntry()Ljavax/naming/directory/Attributes;

    move-result-object p1

    .line 257
    invoke-virtual {v0, v1, p1}, Lorg/apache/ldap/server/db/gui/MainFrame;->displayEntry(Ljava/math/BigInteger;Ljavax/naming/directory/Attributes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 263
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
