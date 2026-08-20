.class public Lcom/yandex/metrica/impl/ob/a4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/a4$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/c9;

.field private final b:Lcom/yandex/metrica/impl/ob/b8;

.field private c:Lcom/yandex/metrica/impl/ob/b6;

.field private d:Lcom/yandex/metrica/impl/ob/L7;

.field private final e:Lcom/yandex/metrica/impl/ob/Dm;

.field private final f:Lcom/yandex/metrica/impl/ob/h6;

.field private final g:Lcom/yandex/metrica/impl/ob/s;

.field private final h:Lcom/yandex/metrica/impl/ob/O3;

.field private i:Lcom/yandex/metrica/impl/ob/a4$a;

.field private final j:Lcom/yandex/metrica/coreutils/services/TimeProvider;

.field private final k:I

.field private l:J

.field private m:J

.field private n:I


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/c9;Lcom/yandex/metrica/impl/ob/b8;Lcom/yandex/metrica/impl/ob/b6;Lcom/yandex/metrica/impl/ob/L7;Lcom/yandex/metrica/impl/ob/s;Lcom/yandex/metrica/impl/ob/Dm;Lcom/yandex/metrica/impl/ob/h6;ILcom/yandex/metrica/impl/ob/a4$a;Lcom/yandex/metrica/impl/ob/O3;Lcom/yandex/metrica/coreutils/services/TimeProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/a4;->a:Lcom/yandex/metrica/impl/ob/c9;

    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/a4;->b:Lcom/yandex/metrica/impl/ob/b8;

    .line 4
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/a4;->c:Lcom/yandex/metrica/impl/ob/b6;

    .line 5
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/a4;->d:Lcom/yandex/metrica/impl/ob/L7;

    .line 6
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/a4;->g:Lcom/yandex/metrica/impl/ob/s;

    .line 7
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/a4;->e:Lcom/yandex/metrica/impl/ob/Dm;

    .line 8
    iput-object p7, p0, Lcom/yandex/metrica/impl/ob/a4;->f:Lcom/yandex/metrica/impl/ob/h6;

    .line 9
    iput p8, p0, Lcom/yandex/metrica/impl/ob/a4;->k:I

    .line 10
    iput-object p10, p0, Lcom/yandex/metrica/impl/ob/a4;->h:Lcom/yandex/metrica/impl/ob/O3;

    .line 11
    iput-object p11, p0, Lcom/yandex/metrica/impl/ob/a4;->j:Lcom/yandex/metrica/coreutils/services/TimeProvider;

    .line 12
    iput-object p9, p0, Lcom/yandex/metrica/impl/ob/a4;->i:Lcom/yandex/metrica/impl/ob/a4$a;

    const-wide/16 p2, 0x0

    .line 13
    invoke-virtual {p1, p2, p3}, Lcom/yandex/metrica/impl/ob/c9;->b(J)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/yandex/metrica/impl/ob/a4;->l:J

    .line 14
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c9;->l()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/yandex/metrica/impl/ob/a4;->m:J

    .line 15
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c9;->i()I

    move-result p1

    iput p1, p0, Lcom/yandex/metrica/impl/ob/a4;->n:I

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/a4;->m:J

    return-wide v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/c0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/a4;->c:Lcom/yandex/metrica/impl/ob/b6;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/b6;->c(Lcom/yandex/metrica/impl/ob/c0;)Lcom/yandex/metrica/impl/ob/V5;

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/c6;)V
    .locals 7

    .line 2
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c0;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/a4;->a:Lcom/yandex/metrica/impl/ob/c9;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/c9;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/c0;->e(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/c0;

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c0;->i()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/a4;->f:Lcom/yandex/metrica/impl/ob/h6;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/h6;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/a4;->a:Lcom/yandex/metrica/impl/ob/c9;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/c9;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/c0;->d(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/c0;

    .line 7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/a4;->b:Lcom/yandex/metrica/impl/ob/b8;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/b8;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/c0;->a(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/c0;

    .line 8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/a4;->g:Lcom/yandex/metrica/impl/ob/s;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/s;->a()Lcom/yandex/metrica/impl/ob/s$a;

    move-result-object v5

    .line 9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/a4;->e:Lcom/yandex/metrica/impl/ob/Dm;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Dm;->a(Lcom/yandex/metrica/impl/ob/c0;)Lcom/yandex/metrica/impl/ob/Cm;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/a4;->d:Lcom/yandex/metrica/impl/ob/L7;

    .line 11
    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/Cm;->a(Lcom/yandex/metrica/impl/ob/c0;)Lcom/yandex/metrica/impl/ob/Bm;

    move-result-object v2

    .line 12
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c0;->o()I

    move-result v3

    iget-object v6, p0, Lcom/yandex/metrica/impl/ob/a4;->h:Lcom/yandex/metrica/impl/ob/O3;

    move-object v4, p2

    .line 13
    invoke-virtual/range {v1 .. v6}, Lcom/yandex/metrica/impl/ob/L7;->a(Lcom/yandex/metrica/impl/ob/Bm;ILcom/yandex/metrica/impl/ob/c6;Lcom/yandex/metrica/impl/ob/s$a;Lcom/yandex/metrica/impl/ob/O3;)V

    .line 20
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/a4;->i:Lcom/yandex/metrica/impl/ob/a4$a;

    check-cast p1, Lcom/yandex/metrica/impl/ob/M3$a;

    .line 21
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/M3$a;->a:Lcom/yandex/metrica/impl/ob/S1;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/S1;->g()V

    return-void
.end method

.method public b()V
    .locals 2

    .line 2
    iget v0, p0, Lcom/yandex/metrica/impl/ob/a4;->k:I

    iput v0, p0, Lcom/yandex/metrica/impl/ob/a4;->n:I

    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/a4;->a:Lcom/yandex/metrica/impl/ob/c9;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/c9;->a(I)Lcom/yandex/metrica/impl/ob/c9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/d9;->d()V

    return-void
.end method

.method public b(Lcom/yandex/metrica/impl/ob/c0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/a4;->c:Lcom/yandex/metrica/impl/ob/b6;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/b6;->b(Lcom/yandex/metrica/impl/ob/c0;)Lcom/yandex/metrica/impl/ob/c6;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/a4;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/c6;)V

    return-void
.end method

.method public c(Lcom/yandex/metrica/impl/ob/c0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/a4;->c:Lcom/yandex/metrica/impl/ob/b6;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/b6;->b(Lcom/yandex/metrica/impl/ob/c0;)Lcom/yandex/metrica/impl/ob/c6;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/a4;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/c6;)V

    .line 2
    iget p1, p0, Lcom/yandex/metrica/impl/ob/a4;->k:I

    iput p1, p0, Lcom/yandex/metrica/impl/ob/a4;->n:I

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/a4;->a:Lcom/yandex/metrica/impl/ob/c9;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/c9;->a(I)Lcom/yandex/metrica/impl/ob/c9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/d9;->d()V

    return-void
.end method

.method public c()Z
    .locals 2

    .line 4
    iget v0, p0, Lcom/yandex/metrica/impl/ob/a4;->n:I

    iget v1, p0, Lcom/yandex/metrica/impl/ob/a4;->k:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(Lcom/yandex/metrica/impl/ob/c0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/a4;->c:Lcom/yandex/metrica/impl/ob/b6;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/b6;->b(Lcom/yandex/metrica/impl/ob/c0;)Lcom/yandex/metrica/impl/ob/c6;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/a4;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/c6;)V

    .line 2
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/a4;->j:Lcom/yandex/metrica/coreutils/services/TimeProvider;

    invoke-interface {p1}, Lcom/yandex/metrica/coreutils/services/TimeProvider;->currentTimeSeconds()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/a4;->l:J

    .line 3
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/a4;->a:Lcom/yandex/metrica/impl/ob/c9;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/c9;->c(J)Lcom/yandex/metrica/impl/ob/c9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/d9;->d()V

    return-void
.end method

.method public d()Z
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/a4;->j:Lcom/yandex/metrica/coreutils/services/TimeProvider;

    invoke-interface {v0}, Lcom/yandex/metrica/coreutils/services/TimeProvider;->currentTimeSeconds()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/a4;->l:J

    sub-long/2addr v0, v2

    .line 5
    sget-wide v2, Lcom/yandex/metrica/impl/ob/Y5;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e(Lcom/yandex/metrica/impl/ob/c0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/a4;->c:Lcom/yandex/metrica/impl/ob/b6;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/b6;->b(Lcom/yandex/metrica/impl/ob/c0;)Lcom/yandex/metrica/impl/ob/c6;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/a4;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/c6;)V

    .line 2
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/a4;->j:Lcom/yandex/metrica/coreutils/services/TimeProvider;

    invoke-interface {p1}, Lcom/yandex/metrica/coreutils/services/TimeProvider;->currentTimeSeconds()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/a4;->m:J

    .line 3
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/a4;->a:Lcom/yandex/metrica/impl/ob/c9;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/c9;->e(J)Lcom/yandex/metrica/impl/ob/c9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/d9;->d()V

    return-void
.end method

.method public f(Lcom/yandex/metrica/impl/ob/c0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/a4;->c:Lcom/yandex/metrica/impl/ob/b6;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/b6;->f(Lcom/yandex/metrica/impl/ob/c0;)Lcom/yandex/metrica/impl/ob/c6;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/a4;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/c6;)V

    return-void
.end method
