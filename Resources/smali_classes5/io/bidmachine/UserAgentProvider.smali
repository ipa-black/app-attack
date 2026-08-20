.class public Lio/bidmachine/UserAgentProvider;
.super Ljava/lang/Object;
.source "UserAgentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/UserAgentProvider$UserAgentCreator;
    }
.end annotation


# static fields
.field private static defaultHttpAgent:Ljava/lang/String;

.field private static generatedUserAgent:Ljava/lang/String;

.field private static webUserAgent:Ljava/lang/String;

.field private static final webUserAgentProcessed:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lio/bidmachine/UserAgentProvider;->webUserAgentProcessed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    :try_start_0
    const-string v0, "http.agent"

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/UserAgentProvider;->defaultHttpAgent:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 19
    sput-object p0, Lio/bidmachine/UserAgentProvider;->webUserAgent:Ljava/lang/String;

    return-object p0
.end method

.method private static findWebUserAgent(Landroid/content/Context;)V
    .locals 3

    .line 59
    sget-object v0, Lio/bidmachine/UserAgentProvider;->webUserAgentProcessed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 63
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/bidmachine/UserAgentProvider$1;

    invoke-direct {v1, p0}, Lio/bidmachine/UserAgentProvider$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 72
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lio/bidmachine/UserAgentProvider;->webUserAgent:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 41
    invoke-static {p0}, Lio/bidmachine/UserAgentProvider;->findWebUserAgent(Landroid/content/Context;)V

    .line 43
    :cond_0
    sget-object v0, Lio/bidmachine/UserAgentProvider;->webUserAgent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    sget-object p0, Lio/bidmachine/UserAgentProvider;->webUserAgent:Ljava/lang/String;

    return-object p0

    .line 46
    :cond_1
    sget-object v0, Lio/bidmachine/UserAgentProvider;->generatedUserAgent:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 47
    invoke-static {p0}, Lio/bidmachine/UserAgentProvider$UserAgentCreator;->access$000(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/bidmachine/UserAgentProvider;->generatedUserAgent:Ljava/lang/String;

    .line 49
    :cond_2
    sget-object p0, Lio/bidmachine/UserAgentProvider;->generatedUserAgent:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 50
    sget-object p0, Lio/bidmachine/UserAgentProvider;->generatedUserAgent:Ljava/lang/String;

    return-object p0

    .line 52
    :cond_3
    sget-object p0, Lio/bidmachine/UserAgentProvider;->defaultHttpAgent:Ljava/lang/String;

    return-object p0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-static {p0}, Lio/bidmachine/UserAgentProvider;->findWebUserAgent(Landroid/content/Context;)V

    return-void
.end method
