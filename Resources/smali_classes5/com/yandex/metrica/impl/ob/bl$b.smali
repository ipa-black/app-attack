.class final enum Lcom/yandex/metrica/impl/ob/bl$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/bl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/metrica/impl/ob/bl$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/yandex/metrica/impl/ob/bl$b;

.field public static final enum c:Lcom/yandex/metrica/impl/ob/bl$b;

.field public static final enum d:Lcom/yandex/metrica/impl/ob/bl$b;

.field public static final enum e:Lcom/yandex/metrica/impl/ob/bl$b;

.field public static final enum f:Lcom/yandex/metrica/impl/ob/bl$b;

.field public static final enum g:Lcom/yandex/metrica/impl/ob/bl$b;

.field private static final synthetic h:[Lcom/yandex/metrica/impl/ob/bl$b;


# instance fields
.field final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/bl$b;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/yandex/metrica/impl/ob/bl$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bl$b;->b:Lcom/yandex/metrica/impl/ob/bl$b;

    .line 2
    new-instance v1, Lcom/yandex/metrica/impl/ob/bl$b;

    const-string v2, "END"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lcom/yandex/metrica/impl/ob/bl$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/yandex/metrica/impl/ob/bl$b;->c:Lcom/yandex/metrica/impl/ob/bl$b;

    .line 3
    new-instance v2, Lcom/yandex/metrica/impl/ob/bl$b;

    const-string v3, "MIDDLE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v3}, Lcom/yandex/metrica/impl/ob/bl$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/yandex/metrica/impl/ob/bl$b;->d:Lcom/yandex/metrica/impl/ob/bl$b;

    .line 4
    new-instance v3, Lcom/yandex/metrica/impl/ob/bl$b;

    const-string v4, "MARQUEE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v4}, Lcom/yandex/metrica/impl/ob/bl$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/yandex/metrica/impl/ob/bl$b;->e:Lcom/yandex/metrica/impl/ob/bl$b;

    .line 5
    new-instance v4, Lcom/yandex/metrica/impl/ob/bl$b;

    const-string v5, "NONE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v5}, Lcom/yandex/metrica/impl/ob/bl$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/yandex/metrica/impl/ob/bl$b;->f:Lcom/yandex/metrica/impl/ob/bl$b;

    .line 6
    new-instance v5, Lcom/yandex/metrica/impl/ob/bl$b;

    const-string v6, "UNKNOWN"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v6}, Lcom/yandex/metrica/impl/ob/bl$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/yandex/metrica/impl/ob/bl$b;->g:Lcom/yandex/metrica/impl/ob/bl$b;

    .line 7
    filled-new-array/range {v0 .. v5}, [Lcom/yandex/metrica/impl/ob/bl$b;

    move-result-object v0

    .line 8
    sput-object v0, Lcom/yandex/metrica/impl/ob/bl$b;->h:[Lcom/yandex/metrica/impl/ob/bl$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/bl$b;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bl$b;
    .locals 1

    .line 1
    const-class v0, Lcom/yandex/metrica/impl/ob/bl$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/impl/ob/bl$b;

    return-object p0
.end method

.method public static values()[Lcom/yandex/metrica/impl/ob/bl$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/bl$b;->h:[Lcom/yandex/metrica/impl/ob/bl$b;

    invoke-virtual {v0}, [Lcom/yandex/metrica/impl/ob/bl$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/ob/bl$b;

    return-object v0
.end method
