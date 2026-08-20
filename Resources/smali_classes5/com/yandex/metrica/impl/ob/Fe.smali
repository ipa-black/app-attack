.class public Lcom/yandex/metrica/impl/ob/Fe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/Ge;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Dm;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Dm;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Dm;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/Fe;-><init>(Lcom/yandex/metrica/impl/ob/Dm;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/Dm;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Fe;->a:Lcom/yandex/metrica/impl/ob/Dm;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/qe;Lcom/yandex/metrica/impl/ob/Lg;)[B
    .locals 2

    const/4 p2, 0x0

    .line 1
    new-array v0, p2, [B

    .line 3
    :try_start_0
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/qe;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/L0;->a(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :catchall_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Fe;->a:Lcom/yandex/metrica/impl/ob/Dm;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/qe;->r:Lcom/yandex/metrica/impl/ob/Em;

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/Dm;->a(Lcom/yandex/metrica/impl/ob/Em;)Lcom/yandex/metrica/impl/ob/Cm;

    move-result-object p1

    .line 8
    invoke-interface {p1, v0}, Lcom/yandex/metrica/impl/ob/Cm;->a([B)[B

    move-result-object p1

    if-nez p1, :cond_0

    .line 9
    new-array p1, p2, [B

    :cond_0
    return-object p1
.end method
