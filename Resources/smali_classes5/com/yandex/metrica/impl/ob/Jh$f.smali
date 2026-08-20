.class final enum Lcom/yandex/metrica/impl/ob/Jh$f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/Jh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/metrica/impl/ob/Jh$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/metrica/impl/ob/Jh$f;

.field public static final enum b:Lcom/yandex/metrica/impl/ob/Jh$f;

.field public static final enum c:Lcom/yandex/metrica/impl/ob/Jh$f;

.field private static final synthetic d:[Lcom/yandex/metrica/impl/ob/Jh$f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Jh$f;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Jh$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/Jh$f;->a:Lcom/yandex/metrica/impl/ob/Jh$f;

    new-instance v0, Lcom/yandex/metrica/impl/ob/Jh$f;

    const-string v1, "SHOULD_RETRY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Jh$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/Jh$f;->b:Lcom/yandex/metrica/impl/ob/Jh$f;

    new-instance v0, Lcom/yandex/metrica/impl/ob/Jh$f;

    const-string v1, "ORDINARY_FAIL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Jh$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/Jh$f;->c:Lcom/yandex/metrica/impl/ob/Jh$f;

    invoke-static {}, Lcom/yandex/metrica/impl/ob/Jh$f;->a()[Lcom/yandex/metrica/impl/ob/Jh$f;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ob/Jh$f;->d:[Lcom/yandex/metrica/impl/ob/Jh$f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Lcom/yandex/metrica/impl/ob/Jh$f;
    .locals 3

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/Jh$f;->a:Lcom/yandex/metrica/impl/ob/Jh$f;

    sget-object v1, Lcom/yandex/metrica/impl/ob/Jh$f;->b:Lcom/yandex/metrica/impl/ob/Jh$f;

    sget-object v2, Lcom/yandex/metrica/impl/ob/Jh$f;->c:Lcom/yandex/metrica/impl/ob/Jh$f;

    filled-new-array {v0, v1, v2}, [Lcom/yandex/metrica/impl/ob/Jh$f;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/Jh$f;
    .locals 1

    .line 1
    const-class v0, Lcom/yandex/metrica/impl/ob/Jh$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/impl/ob/Jh$f;

    return-object p0
.end method

.method public static values()[Lcom/yandex/metrica/impl/ob/Jh$f;
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/Jh$f;->d:[Lcom/yandex/metrica/impl/ob/Jh$f;

    invoke-virtual {v0}, [Lcom/yandex/metrica/impl/ob/Jh$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/ob/Jh$f;

    return-object v0
.end method
