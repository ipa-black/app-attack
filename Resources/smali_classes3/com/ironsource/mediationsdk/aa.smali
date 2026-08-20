.class public final Lcom/ironsource/mediationsdk/aa;
.super Ljava/lang/Object;


# static fields
.field private static final b:Lcom/ironsource/mediationsdk/aa;


# instance fields
.field public a:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ironsource/mediationsdk/aa;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/aa;-><init>()V

    sput-object v0, Lcom/ironsource/mediationsdk/aa;->b:Lcom/ironsource/mediationsdk/aa;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/aa;->a:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    return-void
.end method

.method public static a()Lcom/ironsource/mediationsdk/aa;
    .locals 1

    sget-object v0, Lcom/ironsource/mediationsdk/aa;->b:Lcom/ironsource/mediationsdk/aa;

    return-object v0
.end method

.method static synthetic a(Lcom/ironsource/mediationsdk/aa;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/mediationsdk/aa;->a:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    return-object p0
.end method

.method static synthetic a(Lcom/ironsource/mediationsdk/aa;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p0

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 2

    sget-object v0, Lcom/ironsource/environment/e/c;->a:Lcom/ironsource/environment/e/c;

    new-instance v1, Lcom/ironsource/mediationsdk/aa$10;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/aa$10;-><init>(Lcom/ironsource/mediationsdk/aa;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/e/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/ironsource/mediationsdk/model/Placement;)V
    .locals 2

    sget-object v0, Lcom/ironsource/environment/e/c;->a:Lcom/ironsource/environment/e/c;

    new-instance v1, Lcom/ironsource/mediationsdk/aa$9;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/aa$9;-><init>(Lcom/ironsource/mediationsdk/aa;Lcom/ironsource/mediationsdk/model/Placement;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/e/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    sget-object v0, Lcom/ironsource/environment/e/c;->a:Lcom/ironsource/environment/e/c;

    new-instance v1, Lcom/ironsource/mediationsdk/aa$6;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/aa$6;-><init>(Lcom/ironsource/mediationsdk/aa;Z)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/e/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 2

    sget-object v0, Lcom/ironsource/environment/e/c;->a:Lcom/ironsource/environment/e/c;

    new-instance v1, Lcom/ironsource/mediationsdk/aa$4;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/aa$4;-><init>(Lcom/ironsource/mediationsdk/aa;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/e/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Lcom/ironsource/mediationsdk/model/Placement;)V
    .locals 2

    sget-object v0, Lcom/ironsource/environment/e/c;->a:Lcom/ironsource/environment/e/c;

    new-instance v1, Lcom/ironsource/mediationsdk/aa$2;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/aa$2;-><init>(Lcom/ironsource/mediationsdk/aa;Lcom/ironsource/mediationsdk/model/Placement;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/e/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()V
    .locals 2

    sget-object v0, Lcom/ironsource/environment/e/c;->a:Lcom/ironsource/environment/e/c;

    new-instance v1, Lcom/ironsource/mediationsdk/aa$5;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/aa$5;-><init>(Lcom/ironsource/mediationsdk/aa;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/e/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()V
    .locals 2

    sget-object v0, Lcom/ironsource/environment/e/c;->a:Lcom/ironsource/environment/e/c;

    new-instance v1, Lcom/ironsource/mediationsdk/aa$7;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/aa$7;-><init>(Lcom/ironsource/mediationsdk/aa;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/e/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e()V
    .locals 2

    sget-object v0, Lcom/ironsource/environment/e/c;->a:Lcom/ironsource/environment/e/c;

    new-instance v1, Lcom/ironsource/mediationsdk/aa$8;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/aa$8;-><init>(Lcom/ironsource/mediationsdk/aa;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/e/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method
