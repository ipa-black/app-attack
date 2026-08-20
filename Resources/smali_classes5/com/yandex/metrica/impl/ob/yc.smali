.class Lcom/yandex/metrica/impl/ob/yc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/mc;

.field private b:Lcom/yandex/metrica/impl/ob/V;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/V<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/location/Location;

.field private d:J

.field private e:Lcom/yandex/metrica/impl/ob/x2;

.field private f:Lcom/yandex/metrica/impl/ob/Sc;

.field private g:Lcom/yandex/metrica/impl/ob/Rb;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/mc;Lcom/yandex/metrica/impl/ob/V;Landroid/location/Location;JLcom/yandex/metrica/impl/ob/x2;Lcom/yandex/metrica/impl/ob/Sc;Lcom/yandex/metrica/impl/ob/Rb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/mc;",
            "Lcom/yandex/metrica/impl/ob/V<",
            "Landroid/location/Location;",
            ">;",
            "Landroid/location/Location;",
            "J",
            "Lcom/yandex/metrica/impl/ob/x2;",
            "Lcom/yandex/metrica/impl/ob/Sc;",
            "Lcom/yandex/metrica/impl/ob/Rb;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/yc;->a:Lcom/yandex/metrica/impl/ob/mc;

    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/yc;->b:Lcom/yandex/metrica/impl/ob/V;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/yc;->c:Landroid/location/Location;

    .line 5
    iput-wide p4, p0, Lcom/yandex/metrica/impl/ob/yc;->d:J

    .line 6
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/yc;->e:Lcom/yandex/metrica/impl/ob/x2;

    .line 7
    iput-object p7, p0, Lcom/yandex/metrica/impl/ob/yc;->f:Lcom/yandex/metrica/impl/ob/Sc;

    .line 8
    iput-object p8, p0, Lcom/yandex/metrica/impl/ob/yc;->g:Lcom/yandex/metrica/impl/ob/Rb;

    return-void
.end method

.method private b(Landroid/location/Location;)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/yc;->a:Lcom/yandex/metrica/impl/ob/mc;

    if-eqz v1, :cond_5

    .line 5
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/yc;->c:Landroid/location/Location;

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 6
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/yc;->e:Lcom/yandex/metrica/impl/ob/x2;

    iget-wide v5, p0, Lcom/yandex/metrica/impl/ob/yc;->d:J

    iget-wide v7, v1, Lcom/yandex/metrica/impl/ob/mc;->a:J

    const-string v9, "isSavedLocationOutdated"

    invoke-virtual/range {v4 .. v9}, Lcom/yandex/metrica/impl/ob/x2;->a(JJLjava/lang/String;)Z

    move-result v1

    .line 7
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/yc;->c:Landroid/location/Location;

    invoke-virtual {p1, v2}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v2

    .line 8
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/yc;->a:Lcom/yandex/metrica/impl/ob/mc;

    iget v4, v4, Lcom/yandex/metrica/impl/ob/mc;->b:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v0

    .line 9
    :goto_0
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/yc;->c:Landroid/location/Location;

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/yc;->c:Landroid/location/Location;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-ltz p1, :cond_1

    goto :goto_1

    :cond_1
    move p1, v0

    goto :goto_2

    :cond_2
    :goto_1
    move p1, v3

    :goto_2
    if-nez v1, :cond_3

    if-eqz v2, :cond_5

    :cond_3
    if-eqz p1, :cond_5

    :cond_4
    move v0, v3

    :cond_5
    return v0
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/yc;->b(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/yc;->c:Landroid/location/Location;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/yc;->d:J

    .line 4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/yc;->b:Lcom/yandex/metrica/impl/ob/V;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/V;->a(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/yc;->f:Lcom/yandex/metrica/impl/ob/Sc;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Sc;->a()V

    .line 6
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/yc;->g:Lcom/yandex/metrica/impl/ob/Rb;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Rb;->a()V

    :cond_0
    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/mc;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/yc;->a:Lcom/yandex/metrica/impl/ob/mc;

    return-void
.end method
