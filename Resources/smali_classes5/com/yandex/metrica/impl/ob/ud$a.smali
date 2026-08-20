.class public Lcom/yandex/metrica/impl/ob/ud$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/wd;

.field private b:Lcom/yandex/metrica/impl/ob/wd;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/wd;Lcom/yandex/metrica/impl/ob/wd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ud$a;->a:Lcom/yandex/metrica/impl/ob/wd;

    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ud$a;->b:Lcom/yandex/metrica/impl/ob/wd;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/pi;)Lcom/yandex/metrica/impl/ob/ud$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Fd;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/pi;->E()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/Fd;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ud$a;->b:Lcom/yandex/metrica/impl/ob/wd;

    return-object p0
.end method

.method public a(Z)Lcom/yandex/metrica/impl/ob/ud$a;
    .locals 1

    .line 2
    new-instance v0, Lcom/yandex/metrica/impl/ob/xd;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/xd;-><init>(Z)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ud$a;->a:Lcom/yandex/metrica/impl/ob/wd;

    return-object p0
.end method

.method public a()Lcom/yandex/metrica/impl/ob/ud;
    .locals 3

    .line 3
    new-instance v0, Lcom/yandex/metrica/impl/ob/ud;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ud$a;->a:Lcom/yandex/metrica/impl/ob/wd;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ud$a;->b:Lcom/yandex/metrica/impl/ob/wd;

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/ud;-><init>(Lcom/yandex/metrica/impl/ob/wd;Lcom/yandex/metrica/impl/ob/wd;)V

    return-object v0
.end method
