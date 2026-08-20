.class public Lcom/yandex/metrica/impl/ob/X0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/coreutils/services/TimeProvider;

.field private final b:Lcom/yandex/metrica/impl/ob/x2;

.field private final c:Lcom/yandex/metrica/impl/ob/e9;

.field private d:J

.field private e:Lcom/yandex/metrica/impl/ob/Zh;

.field private final f:Lcom/yandex/metrica/impl/ob/M0;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/e9;Lcom/yandex/metrica/impl/ob/Zh;Lcom/yandex/metrica/coreutils/services/TimeProvider;Lcom/yandex/metrica/impl/ob/x2;Lcom/yandex/metrica/impl/ob/M0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/X0;->c:Lcom/yandex/metrica/impl/ob/e9;

    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/X0;->e:Lcom/yandex/metrica/impl/ob/Zh;

    const-wide/16 v0, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/e9;->d(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/X0;->d:J

    .line 5
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/X0;->a:Lcom/yandex/metrica/coreutils/services/TimeProvider;

    .line 6
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/X0;->b:Lcom/yandex/metrica/impl/ob/x2;

    .line 7
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/X0;->f:Lcom/yandex/metrica/impl/ob/M0;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/X0;->e:Lcom/yandex/metrica/impl/ob/Zh;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/X0;->b:Lcom/yandex/metrica/impl/ob/x2;

    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/X0;->d:J

    iget-wide v4, v0, Lcom/yandex/metrica/impl/ob/Zh;->a:J

    const-string v6, "should send EVENT_IDENTITY_LIGHT"

    .line 2
    invoke-virtual/range {v1 .. v6}, Lcom/yandex/metrica/impl/ob/x2;->b(JJLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/X0;->f:Lcom/yandex/metrica/impl/ob/M0;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/M0;->b()V

    .line 4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/X0;->a:Lcom/yandex/metrica/coreutils/services/TimeProvider;

    invoke-interface {v0}, Lcom/yandex/metrica/coreutils/services/TimeProvider;->currentTimeSeconds()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/X0;->d:J

    .line 5
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/X0;->c:Lcom/yandex/metrica/impl/ob/e9;

    invoke-virtual {v2, v0, v1}, Lcom/yandex/metrica/impl/ob/e9;->i(J)Lcom/yandex/metrica/impl/ob/e9;

    :cond_0
    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/Zh;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/X0;->e:Lcom/yandex/metrica/impl/ob/Zh;

    return-void
.end method
