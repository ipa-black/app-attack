.class public Lcom/yandex/metrica/impl/ob/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/yandex/metrica/impl/ob/If$x;

.field public static final b:Lcom/yandex/metrica/impl/ob/If$g;

.field public static final c:Lcom/yandex/metrica/impl/ob/If$r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$x;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$x;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/ob/m0;->a:Lcom/yandex/metrica/impl/ob/If$x;

    .line 4
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$g;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$g;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/ob/m0;->b:Lcom/yandex/metrica/impl/ob/If$g;

    .line 7
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$r;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$r;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/ob/m0;->c:Lcom/yandex/metrica/impl/ob/If$r;

    return-void
.end method

.method public static a()Lcom/yandex/metrica/impl/ob/If$v;
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$v;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$v;-><init>()V

    .line 3
    sget-object v1, Lcom/yandex/metrica/impl/ob/m0;->a:Lcom/yandex/metrica/impl/ob/If$x;

    iget-boolean v1, v1, Lcom/yandex/metrica/impl/ob/If$x;->a:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$v;->n:Z

    return-object v0
.end method

.method public static b()Lcom/yandex/metrica/impl/ob/If$v;
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$v;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$v;-><init>()V

    .line 3
    sget-object v1, Lcom/yandex/metrica/impl/ob/m0;->a:Lcom/yandex/metrica/impl/ob/If$x;

    iget-boolean v1, v1, Lcom/yandex/metrica/impl/ob/If$x;->b:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$v;->n:Z

    return-object v0
.end method
