.class public Lcom/pgl/ssdk/T;
.super Ljava/lang/Object;
.source "TokenReqRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/pgl/ssdk/U;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/pgl/ssdk/U;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/pgl/ssdk/T;->a:Lcom/pgl/ssdk/U;

    .line 3
    iput-object p1, p0, Lcom/pgl/ssdk/T;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    sget v0, Lcom/pgl/ssdk/F;->a:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "https://ssdk-va.pangle.io/ssdk/sd/token"

    goto :goto_0

    :cond_1
    const-string v0, "https://ssdk-sg.pangle.io/ssdk/sd/token"

    :goto_0
    const/16 v2, 0x1f5

    .line 2
    :try_start_0
    iget-object v3, p0, Lcom/pgl/ssdk/T;->b:Landroid/content/Context;

    const/4 v4, 0x0

    const/16 v5, 0x12d

    invoke-static {v5, v3, v4}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_3

    .line 3
    array-length v5, v3

    if-lez v5, :cond_3

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 10
    :cond_2
    new-instance v0, Lcom/pgl/ssdk/V;

    iget-object v5, p0, Lcom/pgl/ssdk/T;->b:Landroid/content/Context;

    invoke-direct {v0, v5, v4}, Lcom/pgl/ssdk/V;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v4, 0x2

    .line 11
    invoke-virtual {v0, v1, v4, v3}, Lcom/pgl/ssdk/G;->a(II[B)V

    goto :goto_1

    .line 12
    :cond_3
    sput v2, Lcom/pgl/ssdk/S;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 22
    :catchall_0
    sput v2, Lcom/pgl/ssdk/S;->a:I

    .line 28
    :goto_1
    iget-object v0, p0, Lcom/pgl/ssdk/T;->a:Lcom/pgl/ssdk/U;

    if-eqz v0, :cond_4

    .line 29
    invoke-static {}, Lcom/pgl/ssdk/S;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pgl/ssdk/U;->a(Ljava/lang/String;)V

    :cond_4
    return-void
.end method
