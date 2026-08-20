.class Lcom/yandex/metrica/impl/ob/zh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/yandex/metrica/impl/ob/x2;

.field private final c:Lcom/yandex/metrica/coreutils/services/TimeProvider;

.field private final d:Lcom/yandex/metrica/impl/ob/xh;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/wh;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/x2;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/x2;-><init>()V

    new-instance v1, Lcom/yandex/metrica/coreutils/services/SystemTimeProvider;

    invoke-direct {v1}, Lcom/yandex/metrica/coreutils/services/SystemTimeProvider;-><init>()V

    new-instance v2, Lcom/yandex/metrica/impl/ob/xh;

    invoke-direct {v2, p2}, Lcom/yandex/metrica/impl/ob/xh;-><init>(Lcom/yandex/metrica/impl/ob/wh;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/yandex/metrica/impl/ob/zh;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/x2;Lcom/yandex/metrica/coreutils/services/TimeProvider;Lcom/yandex/metrica/impl/ob/xh;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/x2;Lcom/yandex/metrica/coreutils/services/TimeProvider;Lcom/yandex/metrica/impl/ob/xh;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/zh;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/zh;->b:Lcom/yandex/metrica/impl/ob/x2;

    .line 5
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/zh;->c:Lcom/yandex/metrica/coreutils/services/TimeProvider;

    .line 6
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/zh;->d:Lcom/yandex/metrica/impl/ob/xh;

    return-void
.end method


# virtual methods
.method a(Lcom/yandex/metrica/impl/ob/Gh;ILcom/yandex/metrica/impl/ob/di;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/zh;->d:Lcom/yandex/metrica/impl/ob/xh;

    iget-wide v1, p3, Lcom/yandex/metrica/impl/ob/di;->g:J

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/xh;->a(J)V

    .line 2
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/zh;->b:Lcom/yandex/metrica/impl/ob/x2;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/zh;->d:Lcom/yandex/metrica/impl/ob/xh;

    .line 3
    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/ob/xh;->a(I)J

    move-result-wide v4

    iget-wide v6, p3, Lcom/yandex/metrica/impl/ob/di;->g:J

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "report "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/zh;->a:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4
    invoke-virtual/range {v3 .. v8}, Lcom/yandex/metrica/impl/ob/x2;->b(JJLjava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 9
    iget-object p3, p0, Lcom/yandex/metrica/impl/ob/zh;->a:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p1, Lcom/yandex/metrica/impl/ob/Jh;

    invoke-virtual {p1, p3, v0}, Lcom/yandex/metrica/impl/ob/Jh;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/zh;->d:Lcom/yandex/metrica/impl/ob/xh;

    iget-object p3, p0, Lcom/yandex/metrica/impl/ob/zh;->c:Lcom/yandex/metrica/coreutils/services/TimeProvider;

    invoke-interface {p3}, Lcom/yandex/metrica/coreutils/services/TimeProvider;->currentTimeSeconds()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lcom/yandex/metrica/impl/ob/xh;->a(IJ)V

    :cond_0
    return-void
.end method
