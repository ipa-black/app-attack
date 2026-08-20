.class final Lorg/apache/ldap/server/db/gui/MainFrame$8;
.super Ljava/lang/Object;
.source "MainFrame.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field final synthetic this$0:Lorg/apache/ldap/server/db/gui/MainFrame;

.field private final synthetic val$dialog:Lorg/apache/ldap/server/db/gui/FilterDialog;

.field private final synthetic val$mode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/ldap/server/db/gui/MainFrame;Lorg/apache/ldap/server/db/gui/FilterDialog;Ljava/lang/String;)V
    .locals 0

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/MainFrame$8;->this$0:Lorg/apache/ldap/server/db/gui/MainFrame;

    iput-object p2, p0, Lorg/apache/ldap/server/db/gui/MainFrame$8;->val$dialog:Lorg/apache/ldap/server/db/gui/FilterDialog;

    iput-object p3, p0, Lorg/apache/ldap/server/db/gui/MainFrame$8;->val$mode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 3

    .line 551
    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getActionCommand()Ljava/lang/String;

    move-result-object p1

    .line 553
    const-string v0, "Search"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    iget-object p1, p0, Lorg/apache/ldap/server/db/gui/MainFrame$8;->this$0:Lorg/apache/ldap/server/db/gui/MainFrame;

    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame$8;->val$dialog:Lorg/apache/ldap/server/db/gui/FilterDialog;

    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame$8;->val$mode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/apache/ldap/server/db/gui/MainFrame;->doRunDebugAnnotate(Lorg/apache/ldap/server/db/gui/FilterDialog;Ljava/lang/String;)V

    goto :goto_0

    .line 557
    :cond_0
    const-string v0, "Cancel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 567
    :goto_0
    iget-object p1, p0, Lorg/apache/ldap/server/db/gui/MainFrame$8;->val$dialog:Lorg/apache/ldap/server/db/gui/FilterDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/ldap/server/db/gui/FilterDialog;->setVisible(Z)V

    .line 568
    iget-object p1, p0, Lorg/apache/ldap/server/db/gui/MainFrame$8;->val$dialog:Lorg/apache/ldap/server/db/gui/FilterDialog;

    invoke-virtual {p1}, Lorg/apache/ldap/server/db/gui/FilterDialog;->dispose()V

    return-void

    .line 563
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 564
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Unrecognized FilterDialog command: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 563
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
