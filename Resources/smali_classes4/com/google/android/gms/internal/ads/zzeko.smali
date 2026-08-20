.class public final enum Lcom/google/android/gms/internal/ads/zzeko;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzeko;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzeko;

.field public static final enum zzc:Lcom/google/android/gms/internal/ads/zzeko;

.field private static final synthetic zzd:[Lcom/google/android/gms/internal/ads/zzeko;


# instance fields
.field private final zze:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeko;

    const/4 v1, 0x0

    const-string v2, "htmlDisplay"

    const-string v3, "HTML_DISPLAY"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzeko;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeko;->zza:Lcom/google/android/gms/internal/ads/zzeko;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeko;

    const/4 v2, 0x1

    const-string v3, "nativeDisplay"

    .line 2
    const-string v4, "NATIVE_DISPLAY"

    invoke-direct {v1, v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzeko;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzeko;->zzb:Lcom/google/android/gms/internal/ads/zzeko;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeko;

    const/4 v3, 0x2

    const-string v4, "video"

    .line 3
    const-string v5, "VIDEO"

    invoke-direct {v2, v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzeko;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/android/gms/internal/ads/zzeko;->zzc:Lcom/google/android/gms/internal/ads/zzeko;

    filled-new-array {v0, v1, v2}, [Lcom/google/android/gms/internal/ads/zzeko;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeko;->zzd:[Lcom/google/android/gms/internal/ads/zzeko;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeko;->zze:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzeko;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeko;->zzd:[Lcom/google/android/gms/internal/ads/zzeko;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzeko;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzeko;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeko;->zze:Ljava/lang/String;

    return-object v0
.end method
