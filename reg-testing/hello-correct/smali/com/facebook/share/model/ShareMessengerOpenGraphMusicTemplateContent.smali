.class public final Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;
.super Lcom/facebook/share/model/ShareContent;
.source "ShareMessengerOpenGraphMusicTemplateContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent<",
        "Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;",
        "Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final button:Lcom/facebook/share/model/ShareMessengerActionButton;

.field private final url:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$1;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$1;-><init>()V

    sput-object v0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 50
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareContent;-><init>(Landroid/os/Parcel;)V

    .line 51
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->url:Landroid/net/Uri;

    .line 52
    const-class v0, Lcom/facebook/share/model/ShareMessengerActionButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/facebook/share/model/ShareMessengerActionButton;

    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->button:Lcom/facebook/share/model/ShareMessengerActionButton;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;)V
    .locals 1

    .line 44
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareContent;-><init>(Lcom/facebook/share/model/ShareContent$Builder;)V

    .line 45
    invoke-static {p1}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;->access$000(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->url:Landroid/net/Uri;

    .line 46
    invoke-static {p1}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;->access$100(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;)Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->button:Lcom/facebook/share/model/ShareMessengerActionButton;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;-><init>(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;"

    const-string v1, "describeContents"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;"

    const-string v1, "describeContents"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getButton()Lcom/facebook/share/model/ShareMessengerActionButton;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;"

    const-string v1, "getButton"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->button:Lcom/facebook/share/model/ShareMessengerActionButton;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;"

    const-string v1, "getButton"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public getUrl()Landroid/net/Uri;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;"

    const-string v1, "getUrl"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->url:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;"

    const-string v1, "getUrl"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;"

    const-string v1, "writeToParcel"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->url:Landroid/net/Uri;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeParcelable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v5, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeParcelable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->button:Lcom/facebook/share/model/ShareMessengerActionButton;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeParcelable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v5, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeParcelable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;"

    const-string v1, "writeToParcel"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
