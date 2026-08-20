.class final Lorg/apache/ldap/server/RootNexus$1;
.super Ljava/lang/Object;
.source "RootNexus.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/apache/ldap/server/RootNexus;


# direct methods
.method constructor <init>(Lorg/apache/ldap/server/RootNexus;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p1, p0, Lorg/apache/ldap/server/RootNexus$1;->this$0:Lorg/apache/ldap/server/RootNexus;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 124
    :try_start_0
    iget-object v0, p0, Lorg/apache/ldap/server/RootNexus$1;->this$0:Lorg/apache/ldap/server/RootNexus;

    invoke-virtual {v0}, Lorg/apache/ldap/server/RootNexus;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lorg/apache/ldap/server/RootNexus$1;->this$0:Lorg/apache/ldap/server/RootNexus;

    invoke-virtual {v0}, Lorg/apache/ldap/server/RootNexus;->close()V
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljavax/naming/NamingException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
