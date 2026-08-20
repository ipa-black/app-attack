.class public Lcom/explorestack/iab/view/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/view/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Z

.field public b:F

.field public c:J

.field public d:J

.field public e:J

.field public f:J


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/explorestack/iab/view/a$c;->a:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/explorestack/iab/view/a$c;->b:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/explorestack/iab/view/a$c;->c:J

    iput-wide v0, p0, Lcom/explorestack/iab/view/a$c;->d:J

    iput-wide v0, p0, Lcom/explorestack/iab/view/a$c;->e:J

    iput-wide v0, p0, Lcom/explorestack/iab/view/a$c;->f:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/iab/view/a$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/explorestack/iab/view/a$c;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/explorestack/iab/view/a$c;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/view/a$c;->a(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/explorestack/iab/view/a$c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/explorestack/iab/view/a$c;->a:Z

    return p0
.end method

.method public static synthetic b(Lcom/explorestack/iab/view/a$c;)F
    .locals 0

    iget p0, p0, Lcom/explorestack/iab/view/a$c;->b:F

    return p0
.end method

.method public static synthetic c(Lcom/explorestack/iab/view/a$c;)J
    .locals 2

    iget-wide v0, p0, Lcom/explorestack/iab/view/a$c;->d:J

    return-wide v0
.end method

.method public static synthetic d(Lcom/explorestack/iab/view/a$c;)J
    .locals 2

    iget-wide v0, p0, Lcom/explorestack/iab/view/a$c;->c:J

    return-wide v0
.end method


# virtual methods
.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/explorestack/iab/view/a$c;->d:J

    return-void
.end method

.method public final a(Z)V
    .locals 8

    iget-wide v0, p0, Lcom/explorestack/iab/view/a$c;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/explorestack/iab/view/a$c;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/explorestack/iab/view/a$c;->e:J

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/explorestack/iab/view/a$c;->f:J

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/explorestack/iab/view/a$c;->e:J

    goto :goto_0

    :cond_1
    iput-wide v2, p0, Lcom/explorestack/iab/view/a$c;->e:J

    :goto_0
    return-void
.end method

.method public a(ZF)V
    .locals 0

    iput-boolean p1, p0, Lcom/explorestack/iab/view/a$c;->a:Z

    iput p2, p0, Lcom/explorestack/iab/view/a$c;->b:F

    const/high16 p1, 0x447a0000    # 1000.0f

    mul-float/2addr p2, p1

    float-to-long p1, p2

    iput-wide p1, p0, Lcom/explorestack/iab/view/a$c;->c:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/explorestack/iab/view/a$c;->d:J

    return-void
.end method

.method public a()Z
    .locals 4

    iget-wide v0, p0, Lcom/explorestack/iab/view/a$c;->c:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/explorestack/iab/view/a$c;->d:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public b()J
    .locals 6

    iget-wide v0, p0, Lcom/explorestack/iab/view/a$c;->f:J

    iget-wide v2, p0, Lcom/explorestack/iab/view/a$c;->e:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/explorestack/iab/view/a$c;->e:J

    sub-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public c()Z
    .locals 4

    iget-wide v0, p0, Lcom/explorestack/iab/view/a$c;->c:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/explorestack/iab/view/a$c;->d:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/explorestack/iab/view/a$c;->a:Z

    return v0
.end method
