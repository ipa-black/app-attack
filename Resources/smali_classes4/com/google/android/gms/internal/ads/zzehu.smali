.class public final synthetic Lcom/google/android/gms/internal/ads/zzehu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfxt;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzehy;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzehy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehu;->zza:Lcom/google/android/gms/internal/ads/zzehy;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehu;->zza:Lcom/google/android/gms/internal/ads/zzehy;

    check-cast p1, Lorg/json/JSONObject;

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzehy;->zzc:Ljava/util/Map;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzeie;->zza(Ljava/util/Map;Lorg/json/JSONObject;)V

    return-object v0
.end method
