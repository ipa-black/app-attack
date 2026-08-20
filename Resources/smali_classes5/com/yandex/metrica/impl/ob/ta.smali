.class public Lcom/yandex/metrica/impl/ob/ta;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/yandex/metrica/impl/ob/sa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/sa<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/metrica/impl/ob/nm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/nm<",
            "Lcom/yandex/metrica/impl/ob/ra;",
            "Lcom/yandex/metrica/impl/ob/qa;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/yandex/metrica/impl/ob/wa;

.field private final f:Lcom/yandex/metrica/impl/ob/va;

.field private final g:Lcom/yandex/metrica/impl/ob/M0;

.field private final h:Lcom/yandex/metrica/coreutils/services/TimeProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/Q0;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/sa;Lcom/yandex/metrica/impl/ob/nm;Lcom/yandex/metrica/impl/ob/wa;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/metrica/impl/ob/Q0;",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/sa<",
            "TT;>;",
            "Lcom/yandex/metrica/impl/ob/nm<",
            "Lcom/yandex/metrica/impl/ob/ra;",
            "Lcom/yandex/metrica/impl/ob/qa;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/wa;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/yandex/metrica/impl/ob/va;

    invoke-direct {v6, p1, p3, p6, p2}, Lcom/yandex/metrica/impl/ob/va;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/wa;Lcom/yandex/metrica/impl/ob/Q0;)V

    .line 8
    invoke-static {}, Lcom/yandex/metrica/impl/ob/oh;->a()Lcom/yandex/metrica/impl/ob/M0;

    move-result-object v7

    new-instance v8, Lcom/yandex/metrica/coreutils/services/SystemTimeProvider;

    invoke-direct {v8}, Lcom/yandex/metrica/coreutils/services/SystemTimeProvider;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 9
    invoke-direct/range {v0 .. v8}, Lcom/yandex/metrica/impl/ob/ta;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/sa;Lcom/yandex/metrica/impl/ob/nm;Lcom/yandex/metrica/impl/ob/wa;Lcom/yandex/metrica/impl/ob/va;Lcom/yandex/metrica/impl/ob/M0;Lcom/yandex/metrica/coreutils/services/TimeProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/sa;Lcom/yandex/metrica/impl/ob/nm;Lcom/yandex/metrica/impl/ob/wa;Lcom/yandex/metrica/impl/ob/va;Lcom/yandex/metrica/impl/ob/M0;Lcom/yandex/metrica/coreutils/services/TimeProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/sa<",
            "TT;>;",
            "Lcom/yandex/metrica/impl/ob/nm<",
            "Lcom/yandex/metrica/impl/ob/ra;",
            "Lcom/yandex/metrica/impl/ob/qa;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/wa;",
            "Lcom/yandex/metrica/impl/ob/va;",
            "Lcom/yandex/metrica/impl/ob/M0;",
            "Lcom/yandex/metrica/coreutils/services/TimeProvider;",
            ")V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ta;->a:Landroid/content/Context;

    .line 12
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ta;->b:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/ta;->c:Lcom/yandex/metrica/impl/ob/sa;

    .line 14
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/ta;->d:Lcom/yandex/metrica/impl/ob/nm;

    .line 15
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/ta;->e:Lcom/yandex/metrica/impl/ob/wa;

    .line 16
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/ta;->f:Lcom/yandex/metrica/impl/ob/va;

    .line 17
    iput-object p7, p0, Lcom/yandex/metrica/impl/ob/ta;->g:Lcom/yandex/metrica/impl/ob/M0;

    .line 18
    iput-object p8, p0, Lcom/yandex/metrica/impl/ob/ta;->h:Lcom/yandex/metrica/coreutils/services/TimeProvider;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/ra;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/yandex/metrica/impl/ob/ra;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ta;->d:Lcom/yandex/metrica/impl/ob/nm;

    invoke-interface {v0, p2}, Lcom/yandex/metrica/impl/ob/nm;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yandex/metrica/impl/ob/qa;

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ta;->f:Lcom/yandex/metrica/impl/ob/va;

    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/ob/va;->a(Lcom/yandex/metrica/impl/ob/qa;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/ta;->g:Lcom/yandex/metrica/impl/ob/M0;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ta;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ta;->c:Lcom/yandex/metrica/impl/ob/sa;

    invoke-interface {v1, p1}, Lcom/yandex/metrica/impl/ob/sa;->a(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/yandex/metrica/impl/ob/M0;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 4
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ta;->e:Lcom/yandex/metrica/impl/ob/wa;

    new-instance p2, Lcom/yandex/metrica/impl/ob/Z8;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ta;->a:Landroid/content/Context;

    .line 6
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ja;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ja;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ja;->g()Lcom/yandex/metrica/impl/ob/S7;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/yandex/metrica/impl/ob/Z8;-><init>(Lcom/yandex/metrica/impl/ob/S7;)V

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ta;->h:Lcom/yandex/metrica/coreutils/services/TimeProvider;

    .line 9
    invoke-interface {v0}, Lcom/yandex/metrica/coreutils/services/TimeProvider;->currentTimeSeconds()J

    move-result-wide v0

    .line 10
    invoke-interface {p1, p2, v0, v1}, Lcom/yandex/metrica/impl/ob/wa;->a(Lcom/yandex/metrica/impl/ob/Z8;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
