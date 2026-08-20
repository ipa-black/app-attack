.class final Lorg/apache/ldap/server/db/gui/MainFrame$9;
.super Ljava/lang/Object;
.source "MainFrame.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field final synthetic this$0:Lorg/apache/ldap/server/db/gui/MainFrame;


# direct methods
.method constructor <init>(Lorg/apache/ldap/server/db/gui/MainFrame;)V
    .locals 0

    .line 805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/MainFrame$9;->this$0:Lorg/apache/ldap/server/db/gui/MainFrame;

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 1

    .line 811
    :try_start_0
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame$9;->this$0:Lorg/apache/ldap/server/db/gui/MainFrame;

    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getActionCommand()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/db/gui/MainFrame;->showIndexDialog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 815
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
