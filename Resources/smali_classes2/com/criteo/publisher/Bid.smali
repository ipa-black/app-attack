.class public Lcom/criteo/publisher/Bid;
.super Ljava/lang/Object;
.source "Bid.java"


# instance fields
.field private final a:D

.field private final b:Lcom/criteo/publisher/n0/a;

.field private final c:Lcom/criteo/publisher/i;

.field private d:Lcom/criteo/publisher/model/s;


# direct methods
.method public static synthetic $r8$lambda$JOAxhp9ppPt_V4Ss3oHvwix4nbc(Lcom/criteo/publisher/model/s;)Lcom/criteo/publisher/model/s;
    .locals 0

    invoke-static {p0}, Lcom/criteo/publisher/Bid;->a(Lcom/criteo/publisher/model/s;)Lcom/criteo/publisher/model/s;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/criteo/publisher/n0/a;Lcom/criteo/publisher/i;Lcom/criteo/publisher/model/s;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p3}, Lcom/criteo/publisher/model/s;->b()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/criteo/publisher/Bid;->a:D

    .line 49
    iput-object p1, p0, Lcom/criteo/publisher/Bid;->b:Lcom/criteo/publisher/n0/a;

    .line 50
    iput-object p3, p0, Lcom/criteo/publisher/Bid;->d:Lcom/criteo/publisher/model/s;

    .line 51
    iput-object p2, p0, Lcom/criteo/publisher/Bid;->c:Lcom/criteo/publisher/i;

    return-void
.end method

.method private static synthetic a(Lcom/criteo/publisher/model/s;)Lcom/criteo/publisher/model/s;
    .locals 0

    return-object p0
.end method

.method private declared-synchronized a(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/criteo/publisher/model/s;",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/criteo/publisher/Bid;->d:Lcom/criteo/publisher/model/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/criteo/publisher/Bid;->c:Lcom/criteo/publisher/i;

    invoke-virtual {v0, v2}, Lcom/criteo/publisher/model/s;->a(Lcom/criteo/publisher/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/Bid;->d:Lcom/criteo/publisher/model/s;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 95
    iput-object v1, p0, Lcom/criteo/publisher/Bid;->d:Lcom/criteo/publisher/model/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-object p1

    .line 88
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public a()Lcom/criteo/publisher/model/b0/n;
    .locals 1

    .line 82
    new-instance v0, Lcom/criteo/publisher/Bid$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/criteo/publisher/Bid$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p0, v0}, Lcom/criteo/publisher/Bid;->a(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/model/b0/n;

    return-object v0
.end method

.method public a(Lcom/criteo/publisher/n0/a;)Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/criteo/publisher/Bid;->b:Lcom/criteo/publisher/n0/a;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 76
    :cond_0
    new-instance p1, Lcom/criteo/publisher/Bid$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/criteo/publisher/Bid$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1}, Lcom/criteo/publisher/Bid;->a(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public b()Lcom/criteo/publisher/model/s;
    .locals 1

    .line 66
    new-instance v0, Lcom/criteo/publisher/Bid$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/criteo/publisher/Bid$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, v0}, Lcom/criteo/publisher/Bid;->a(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/model/s;

    return-object v0
.end method

.method public c()Lcom/criteo/publisher/n0/a;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/criteo/publisher/Bid;->b:Lcom/criteo/publisher/n0/a;

    return-object v0
.end method

.method public getPrice()D
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/criteo/publisher/Bid;->a:D

    return-wide v0
.end method
