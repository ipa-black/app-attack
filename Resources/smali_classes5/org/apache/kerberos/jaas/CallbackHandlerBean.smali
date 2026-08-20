.class public Lorg/apache/kerberos/jaas/CallbackHandlerBean;
.super Ljava/lang/Object;
.source "CallbackHandlerBean.java"

# interfaces
.implements Ljavax/security/auth/callback/CallbackHandler;


# instance fields
.field private name:Ljava/lang/String;

.field private password:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/apache/kerberos/jaas/CallbackHandlerBean;->name:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lorg/apache/kerberos/jaas/CallbackHandlerBean;->password:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public handle([Ljavax/security/auth/callback/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/callback/UnsupportedCallbackException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 43
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 45
    aget-object v1, p1, v0

    .line 48
    instance-of v2, v1, Ljavax/security/auth/callback/NameCallback;

    if-eqz v2, :cond_0

    .line 50
    check-cast v1, Ljavax/security/auth/callback/NameCallback;

    .line 51
    iget-object v2, p0, Lorg/apache/kerberos/jaas/CallbackHandlerBean;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljavax/security/auth/callback/NameCallback;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 54
    :cond_0
    instance-of v2, v1, Ljavax/security/auth/callback/PasswordCallback;

    if-eqz v2, :cond_1

    .line 56
    check-cast v1, Ljavax/security/auth/callback/PasswordCallback;

    .line 57
    iget-object v2, p0, Lorg/apache/kerberos/jaas/CallbackHandlerBean;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/security/auth/callback/PasswordCallback;->setPassword([C)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_1
    new-instance p1, Ljavax/security/auth/callback/UnsupportedCallbackException;

    const-string v0, "Callback not supported"

    invoke-direct {p1, v1, v0}, Ljavax/security/auth/callback/UnsupportedCallbackException;-><init>(Ljavax/security/auth/callback/Callback;Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method
