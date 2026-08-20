.class Lcom/yandex/metrica/impl/ob/Jh$d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/Bh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/Jh$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/Jh$d;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Jh$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Jh$d$b;->a:Lcom/yandex/metrica/impl/ob/Jh$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/net/Socket;Landroid/net/Uri;Lcom/yandex/metrica/impl/ob/Hh;)Lcom/yandex/metrica/impl/ob/Ah;
    .locals 7

    .line 1
    new-instance v6, Lcom/yandex/metrica/impl/ob/Dh;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jh$d$b;->a:Lcom/yandex/metrica/impl/ob/Jh$d;

    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Jh$d;->a:Lcom/yandex/metrica/impl/ob/Jh;

    .line 5
    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/Jh;->d(Lcom/yandex/metrica/impl/ob/Jh;)Lcom/yandex/metrica/impl/ob/di;

    move-result-object v4

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/Dh;-><init>(Ljava/net/Socket;Landroid/net/Uri;Lcom/yandex/metrica/impl/ob/Gh;Lcom/yandex/metrica/impl/ob/di;Lcom/yandex/metrica/impl/ob/Hh;)V

    return-object v6
.end method
