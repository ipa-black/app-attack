.class public Lcom/yandex/metrica/impl/ob/sj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/Lj;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/yj;

.field private final b:Lcom/yandex/metrica/impl/ob/xj;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/yj;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/yj;-><init>()V

    new-instance v1, Lcom/yandex/metrica/impl/ob/xj;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/xj;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/sj;-><init>(Lcom/yandex/metrica/impl/ob/yj;Lcom/yandex/metrica/impl/ob/xj;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/yj;Lcom/yandex/metrica/impl/ob/xj;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/sj;->a:Lcom/yandex/metrica/impl/ob/yj;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/sj;->b:Lcom/yandex/metrica/impl/ob/xj;

    return-void
.end method


# virtual methods
.method public a(Landroid/telephony/CellInfo;)Lcom/yandex/metrica/impl/ob/uj;
    .locals 2

    .line 2
    new-instance v0, Lcom/yandex/metrica/impl/ob/uj$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/uj$a;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/sj;->a:Lcom/yandex/metrica/impl/ob/yj;

    invoke-virtual {v1, p1, v0}, Lcom/yandex/metrica/impl/ob/yj;->a(Landroid/telephony/CellInfo;Lcom/yandex/metrica/impl/ob/uj$a;)V

    .line 4
    new-instance p1, Lcom/yandex/metrica/impl/ob/uj;

    invoke-direct {p1, v0}, Lcom/yandex/metrica/impl/ob/uj;-><init>(Lcom/yandex/metrica/impl/ob/uj$a;)V

    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/sj;->b:Lcom/yandex/metrica/impl/ob/xj;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/xj;->a(Lcom/yandex/metrica/impl/ob/uj;)Lcom/yandex/metrica/impl/ob/uj;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/yandex/metrica/impl/ob/Sh;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/sj;->a:Lcom/yandex/metrica/impl/ob/yj;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/yj;->a(Lcom/yandex/metrica/impl/ob/Sh;)V

    return-void
.end method
