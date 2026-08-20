.class Lcom/yandex/metrica/impl/ob/lk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/b9;

.field private b:J


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/b9;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/lk;->a:Lcom/yandex/metrica/impl/ob/b9;

    const-wide/16 v0, -0x1

    .line 3
    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b9;->c(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/lk;->b:J

    return-void
.end method


# virtual methods
.method a()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/lk;->a:Lcom/yandex/metrica/impl/ob/b9;

    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/lk;->b:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/yandex/metrica/impl/ob/lk;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/b9;->f(J)Lcom/yandex/metrica/impl/ob/b9;

    .line 2
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/lk;->b:J

    return-wide v0
.end method
