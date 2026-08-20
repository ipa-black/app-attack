.class public final enum Lcom/unity3d/services/core/cache/CacheError;
.super Ljava/lang/Enum;
.source "CacheError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/services/core/cache/CacheError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/services/core/cache/CacheError;

.field public static final enum CACHE_DIRECTORY_DOESNT_EXIST:Lcom/unity3d/services/core/cache/CacheError;

.field public static final enum CACHE_DIRECTORY_EXISTS:Lcom/unity3d/services/core/cache/CacheError;

.field public static final enum CACHE_DIRECTORY_NULL:Lcom/unity3d/services/core/cache/CacheError;

.field public static final enum CACHE_DIRECTORY_TYPE_NULL:Lcom/unity3d/services/core/cache/CacheError;

.field public static final enum FILE_ALREADY_CACHING:Lcom/unity3d/services/core/cache/CacheError;

.field public static final enum FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

.field public static final enum FILE_NOT_FOUND:Lcom/unity3d/services/core/cache/CacheError;

.field public static final enum FILE_STATE_WRONG:Lcom/unity3d/services/core/cache/CacheError;

.field public static final enum ILLEGAL_STATE:Lcom/unity3d/services/core/cache/CacheError;

.field public static final enum INVALID_ARGUMENT:Lcom/unity3d/services/core/cache/CacheError;

.field public static final enum JSON_ERROR:Lcom/unity3d/services/core/cache/CacheError;

.field public static final enum MALFORMED_URL:Lcom/unity3d/services/core/cache/CacheError;

.field public static final enum NETWORK_ERROR:Lcom/unity3d/services/core/cache/CacheError;

.field public static final enum NOT_CACHING:Lcom/unity3d/services/core/cache/CacheError;

.field public static final enum NO_INTERNET:Lcom/unity3d/services/core/cache/CacheError;

.field public static final enum UNKNOWN_ERROR:Lcom/unity3d/services/core/cache/CacheError;

.field public static final enum UNSUPPORTED_ENCODING:Lcom/unity3d/services/core/cache/CacheError;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 4
    new-instance v1, Lcom/unity3d/services/core/cache/CacheError;

    move-object v0, v1

    const-string v2, "FILE_IO_ERROR"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/unity3d/services/core/cache/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    .line 5
    new-instance v2, Lcom/unity3d/services/core/cache/CacheError;

    move-object v1, v2

    const-string v3, "FILE_NOT_FOUND"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/unity3d/services/core/cache/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/unity3d/services/core/cache/CacheError;->FILE_NOT_FOUND:Lcom/unity3d/services/core/cache/CacheError;

    .line 6
    new-instance v3, Lcom/unity3d/services/core/cache/CacheError;

    move-object v2, v3

    const-string v4, "FILE_ALREADY_CACHING"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/unity3d/services/core/cache/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/unity3d/services/core/cache/CacheError;->FILE_ALREADY_CACHING:Lcom/unity3d/services/core/cache/CacheError;

    .line 7
    new-instance v4, Lcom/unity3d/services/core/cache/CacheError;

    move-object v3, v4

    const-string v5, "NOT_CACHING"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lcom/unity3d/services/core/cache/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/unity3d/services/core/cache/CacheError;->NOT_CACHING:Lcom/unity3d/services/core/cache/CacheError;

    .line 8
    new-instance v5, Lcom/unity3d/services/core/cache/CacheError;

    move-object v4, v5

    const-string v6, "JSON_ERROR"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lcom/unity3d/services/core/cache/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/unity3d/services/core/cache/CacheError;->JSON_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    .line 9
    new-instance v6, Lcom/unity3d/services/core/cache/CacheError;

    move-object v5, v6

    const-string v7, "NO_INTERNET"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lcom/unity3d/services/core/cache/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/unity3d/services/core/cache/CacheError;->NO_INTERNET:Lcom/unity3d/services/core/cache/CacheError;

    .line 10
    new-instance v7, Lcom/unity3d/services/core/cache/CacheError;

    move-object v6, v7

    const-string v8, "MALFORMED_URL"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lcom/unity3d/services/core/cache/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/unity3d/services/core/cache/CacheError;->MALFORMED_URL:Lcom/unity3d/services/core/cache/CacheError;

    .line 11
    new-instance v8, Lcom/unity3d/services/core/cache/CacheError;

    move-object v7, v8

    const-string v9, "NETWORK_ERROR"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lcom/unity3d/services/core/cache/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/unity3d/services/core/cache/CacheError;->NETWORK_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    .line 12
    new-instance v9, Lcom/unity3d/services/core/cache/CacheError;

    move-object v8, v9

    const-string v10, "ILLEGAL_STATE"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lcom/unity3d/services/core/cache/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/unity3d/services/core/cache/CacheError;->ILLEGAL_STATE:Lcom/unity3d/services/core/cache/CacheError;

    .line 13
    new-instance v10, Lcom/unity3d/services/core/cache/CacheError;

    move-object v9, v10

    const-string v11, "INVALID_ARGUMENT"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lcom/unity3d/services/core/cache/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/unity3d/services/core/cache/CacheError;->INVALID_ARGUMENT:Lcom/unity3d/services/core/cache/CacheError;

    .line 14
    new-instance v11, Lcom/unity3d/services/core/cache/CacheError;

    move-object v10, v11

    const-string v12, "UNSUPPORTED_ENCODING"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lcom/unity3d/services/core/cache/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/unity3d/services/core/cache/CacheError;->UNSUPPORTED_ENCODING:Lcom/unity3d/services/core/cache/CacheError;

    .line 15
    new-instance v12, Lcom/unity3d/services/core/cache/CacheError;

    move-object v11, v12

    const-string v13, "FILE_STATE_WRONG"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lcom/unity3d/services/core/cache/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/unity3d/services/core/cache/CacheError;->FILE_STATE_WRONG:Lcom/unity3d/services/core/cache/CacheError;

    .line 16
    new-instance v13, Lcom/unity3d/services/core/cache/CacheError;

    move-object v12, v13

    const-string v14, "CACHE_DIRECTORY_NULL"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lcom/unity3d/services/core/cache/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/unity3d/services/core/cache/CacheError;->CACHE_DIRECTORY_NULL:Lcom/unity3d/services/core/cache/CacheError;

    .line 17
    new-instance v14, Lcom/unity3d/services/core/cache/CacheError;

    move-object v13, v14

    const-string v15, "CACHE_DIRECTORY_TYPE_NULL"

    move-object/from16 v17, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lcom/unity3d/services/core/cache/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/unity3d/services/core/cache/CacheError;->CACHE_DIRECTORY_TYPE_NULL:Lcom/unity3d/services/core/cache/CacheError;

    .line 18
    new-instance v0, Lcom/unity3d/services/core/cache/CacheError;

    move-object v14, v0

    const-string v15, "CACHE_DIRECTORY_EXISTS"

    move-object/from16 v18, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lcom/unity3d/services/core/cache/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/core/cache/CacheError;->CACHE_DIRECTORY_EXISTS:Lcom/unity3d/services/core/cache/CacheError;

    .line 19
    new-instance v0, Lcom/unity3d/services/core/cache/CacheError;

    move-object v15, v0

    const-string v1, "CACHE_DIRECTORY_DOESNT_EXIST"

    move-object/from16 v19, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/core/cache/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/core/cache/CacheError;->CACHE_DIRECTORY_DOESNT_EXIST:Lcom/unity3d/services/core/cache/CacheError;

    .line 20
    new-instance v0, Lcom/unity3d/services/core/cache/CacheError;

    move-object/from16 v16, v0

    const-string v1, "UNKNOWN_ERROR"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/core/cache/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/core/cache/CacheError;->UNKNOWN_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    .line 3
    filled-new-array/range {v0 .. v16}, [Lcom/unity3d/services/core/cache/CacheError;

    move-result-object v0

    sput-object v0, Lcom/unity3d/services/core/cache/CacheError;->$VALUES:[Lcom/unity3d/services/core/cache/CacheError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/core/cache/CacheError;
    .locals 1

    .line 3
    const-class v0, Lcom/unity3d/services/core/cache/CacheError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/services/core/cache/CacheError;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/services/core/cache/CacheError;
    .locals 1

    .line 3
    sget-object v0, Lcom/unity3d/services/core/cache/CacheError;->$VALUES:[Lcom/unity3d/services/core/cache/CacheError;

    invoke-virtual {v0}, [Lcom/unity3d/services/core/cache/CacheError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/core/cache/CacheError;

    return-object v0
.end method
