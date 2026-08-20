.class public Lorg/apache/mina/common/BaseSessionManager;
.super Ljava/lang/Object;
.source "BaseSessionManager.java"

# interfaces
.implements Lorg/apache/mina/common/SessionManager;


# instance fields
.field protected exceptionMonitor:Lorg/apache/mina/common/ExceptionMonitor;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lorg/apache/mina/common/DefaultExceptionMonitor;

    invoke-direct {v0}, Lorg/apache/mina/common/DefaultExceptionMonitor;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/common/BaseSessionManager;->exceptionMonitor:Lorg/apache/mina/common/ExceptionMonitor;

    return-void
.end method


# virtual methods
.method public getExceptionMonitor()Lorg/apache/mina/common/ExceptionMonitor;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/apache/mina/common/BaseSessionManager;->exceptionMonitor:Lorg/apache/mina/common/ExceptionMonitor;

    return-object v0
.end method

.method public setExceptionMonitor(Lorg/apache/mina/common/ExceptionMonitor;)V
    .locals 0

    if-nez p1, :cond_0

    .line 47
    new-instance p1, Lorg/apache/mina/common/DefaultExceptionMonitor;

    invoke-direct {p1}, Lorg/apache/mina/common/DefaultExceptionMonitor;-><init>()V

    .line 50
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/common/BaseSessionManager;->exceptionMonitor:Lorg/apache/mina/common/ExceptionMonitor;

    return-void
.end method
