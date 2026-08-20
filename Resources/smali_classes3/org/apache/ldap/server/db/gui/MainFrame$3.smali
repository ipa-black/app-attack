.class final Lorg/apache/ldap/server/db/gui/MainFrame$3;
.super Ljava/lang/Object;
.source "MainFrame.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field final synthetic this$0:Lorg/apache/ldap/server/db/gui/MainFrame;


# direct methods
.method constructor <init>(Lorg/apache/ldap/server/db/gui/MainFrame;)V
    .locals 0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/MainFrame$3;->this$0:Lorg/apache/ldap/server/db/gui/MainFrame;

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 0

    .line 191
    iget-object p1, p0, Lorg/apache/ldap/server/db/gui/MainFrame$3;->this$0:Lorg/apache/ldap/server/db/gui/MainFrame;

    invoke-static {p1}, Lorg/apache/ldap/server/db/gui/MainFrame;->access$0(Lorg/apache/ldap/server/db/gui/MainFrame;)V

    return-void
.end method
