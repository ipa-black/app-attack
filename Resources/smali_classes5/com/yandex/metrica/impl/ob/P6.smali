.class public Lcom/yandex/metrica/impl/ob/P6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/ProtobufConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/core/api/ProtobufConverter<",
        "Lcom/yandex/metrica/impl/ob/d7;",
        "Lcom/yandex/metrica/impl/ob/gf;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/yandex/metrica/impl/ob/g7;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/yandex/metrica/impl/ob/g7;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/P6;->a:Ljava/util/EnumMap;

    .line 2
    sget-object v1, Lcom/yandex/metrica/impl/ob/g7;->a:Lcom/yandex/metrica/impl/ob/g7;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Lcom/yandex/metrica/impl/ob/g7;->c:Lcom/yandex/metrica/impl/ob/g7;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lcom/yandex/metrica/impl/ob/g7;->d:Lcom/yandex/metrica/impl/ob/g7;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/d7;)Lcom/yandex/metrica/impl/ob/gf;
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/gf;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/gf;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lcom/yandex/metrica/impl/ob/gf;->f:I

    .line 3
    new-instance v1, Lcom/yandex/metrica/impl/ob/gf$a;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/gf$a;-><init>()V

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/gf;->g:Lcom/yandex/metrica/impl/ob/gf$a;

    .line 4
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/d7;->a()[B

    move-result-object v2

    iput-object v2, v1, Lcom/yandex/metrica/impl/ob/gf$a;->a:[B

    .line 5
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/d7;->b()Lcom/yandex/metrica/impl/ob/c7;

    move-result-object p1

    .line 6
    iget-object v1, v0, Lcom/yandex/metrica/impl/ob/gf;->g:Lcom/yandex/metrica/impl/ob/gf$a;

    new-instance v2, Lcom/yandex/metrica/impl/ob/if;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/if;-><init>()V

    iput-object v2, v1, Lcom/yandex/metrica/impl/ob/gf$a;->b:Lcom/yandex/metrica/impl/ob/if;

    .line 7
    sget-object v1, Lcom/yandex/metrica/impl/ob/P6;->a:Ljava/util/EnumMap;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c7;->b()Lcom/yandex/metrica/impl/ob/g7;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 9
    iget-object v2, v0, Lcom/yandex/metrica/impl/ob/gf;->g:Lcom/yandex/metrica/impl/ob/gf$a;

    iget-object v2, v2, Lcom/yandex/metrica/impl/ob/gf$a;->b:Lcom/yandex/metrica/impl/ob/if;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Lcom/yandex/metrica/impl/ob/if;->a:I

    .line 11
    :cond_0
    iget-object v1, v0, Lcom/yandex/metrica/impl/ob/gf;->g:Lcom/yandex/metrica/impl/ob/gf$a;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/gf$a;->b:Lcom/yandex/metrica/impl/ob/if;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c7;->a()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    iput-object p1, v1, Lcom/yandex/metrica/impl/ob/if;->b:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/d7;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/P6;->a(Lcom/yandex/metrica/impl/ob/d7;)Lcom/yandex/metrica/impl/ob/gf;

    move-result-object p1

    return-object p1
.end method

.method public toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/gf;

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
