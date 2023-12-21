.class public final Ldev/czlucius/gctf23challenge/UserActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "UserActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0014J\u0006\u0010\u000f\u001a\u00020\u000cJ\u0011\u0010\u0010\u001a\u00020\u000cH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0011J\u0006\u0010\u0012\u001a\u00020\u000cR\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0013"
    }
    d2 = {
        "Ldev/czlucius/gctf23challenge/UserActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "HOST_URL",
        "",
        "getHOST_URL",
        "()Ljava/lang/String;",
        "appBarConfiguration",
        "Landroidx/navigation/ui/AppBarConfiguration;",
        "binding",
        "Ldev/czlucius/gctf23challenge/databinding/ActivityUserBinding;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "populateChooser",
        "requestFlag",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "requestToken",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private appBarConfiguration:Landroidx/navigation/ui/AppBarConfiguration;

.field private binding:Ldev/czlucius/gctf23challenge/databinding/ActivityUserBinding;


# direct methods
.method public static synthetic $r8$lambda$WWlXzIhzpsG1MbTNnN3ICrjTcTY(Ldev/czlucius/gctf23challenge/UserActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/czlucius/gctf23challenge/UserActivity;->onCreate$lambda$0(Ldev/czlucius/gctf23challenge/UserActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$odWvUTUY4ebg9bImQKu1Rt848K4(Ldev/czlucius/gctf23challenge/UserActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/czlucius/gctf23challenge/UserActivity;->onCreate$lambda$1(Ldev/czlucius/gctf23challenge/UserActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBinding$p(Ldev/czlucius/gctf23challenge/UserActivity;)Ldev/czlucius/gctf23challenge/databinding/ActivityUserBinding;
    .locals 0

    .line 33
    iget-object p0, p0, Ldev/czlucius/gctf23challenge/UserActivity;->binding:Ldev/czlucius/gctf23challenge/databinding/ActivityUserBinding;

    return-object p0
.end method

.method public static final synthetic access$getHOST_URL(Ldev/czlucius/gctf23challenge/UserActivity;)Ljava/lang/String;
    .locals 0

    .line 33
    invoke-direct {p0}, Ldev/czlucius/gctf23challenge/UserActivity;->getHOST_URL()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getHOST_URL()Ljava/lang/String;
    .locals 2

    .line 41
    iget-object v0, p0, Ldev/czlucius/gctf23challenge/UserActivity;->binding:Ldev/czlucius/gctf23challenge/databinding/ActivityUserBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "binding"

    .line 44
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Ldev/czlucius/gctf23challenge/databinding/ActivityUserBinding;->content:Ldev/czlucius/gctf23challenge/databinding/ContentUserBinding;

    iget-object v0, v0, Ldev/czlucius/gctf23challenge/databinding/ContentUserBinding;->urlChooser:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static final onCreate$lambda$0(Ldev/czlucius/gctf23challenge/UserActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Ldev/czlucius/gctf23challenge/UserActivity;->requestToken()V

    return-void
.end method

.method private static final onCreate$lambda$1(Ldev/czlucius/gctf23challenge/UserActivity;Landroid/view/View;)V
    .locals 6

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    move-object p1, p0

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    const/4 v2, 0x0

    new-instance p1, Ldev/czlucius/gctf23challenge/UserActivity$onCreate$2$1;

    const/4 v3, 0x0

    invoke-direct {p1, p0, v3}, Ldev/czlucius/gctf23challenge/UserActivity$onCreate$2$1;-><init>(Ldev/czlucius/gctf23challenge/UserActivity;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 48
    invoke-virtual {p0}, Ldev/czlucius/gctf23challenge/UserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 49
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Ldev/czlucius/gctf23challenge/UserActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Ldev/czlucius/gctf23challenge/databinding/ActivityUserBinding;->inflate(Landroid/view/LayoutInflater;)Ldev/czlucius/gctf23challenge/databinding/ActivityUserBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ldev/czlucius/gctf23challenge/UserActivity;->binding:Ldev/czlucius/gctf23challenge/databinding/ActivityUserBinding;

    const/4 v0, 0x0

    const-string v1, "binding"

    if-nez p1, :cond_0

    .line 52
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Ldev/czlucius/gctf23challenge/databinding/ActivityUserBinding;->getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Ldev/czlucius/gctf23challenge/UserActivity;->setContentView(Landroid/view/View;)V

    .line 54
    iget-object p1, p0, Ldev/czlucius/gctf23challenge/UserActivity;->binding:Ldev/czlucius/gctf23challenge/databinding/ActivityUserBinding;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    iget-object p1, p1, Ldev/czlucius/gctf23challenge/databinding/ActivityUserBinding;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Ldev/czlucius/gctf23challenge/UserActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 57
    iget-object p1, p0, Ldev/czlucius/gctf23challenge/UserActivity;->binding:Ldev/czlucius/gctf23challenge/databinding/ActivityUserBinding;

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, p1

    :goto_0
    iget-object p1, v0, Ldev/czlucius/gctf23challenge/databinding/ActivityUserBinding;->content:Ldev/czlucius/gctf23challenge/databinding/ContentUserBinding;

    const-string v0, "binding.content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p1, Ldev/czlucius/gctf23challenge/databinding/ContentUserBinding;->refreshServerTokenBtn:Landroid/widget/Button;

    new-instance v1, Ldev/czlucius/gctf23challenge/UserActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ldev/czlucius/gctf23challenge/UserActivity$$ExternalSyntheticLambda0;-><init>(Ldev/czlucius/gctf23challenge/UserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object p1, p1, Ldev/czlucius/gctf23challenge/databinding/ContentUserBinding;->getFlagBtn:Landroid/widget/Button;

    new-instance v0, Ldev/czlucius/gctf23challenge/UserActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Ldev/czlucius/gctf23challenge/UserActivity$$ExternalSyntheticLambda1;-><init>(Ldev/czlucius/gctf23challenge/UserActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-virtual {p0}, Ldev/czlucius/gctf23challenge/UserActivity;->populateChooser()V

    return-void
.end method

.method public final populateChooser()V
    .locals 7

    .line 74
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    const/4 v3, 0x0

    new-instance v0, Ldev/czlucius/gctf23challenge/UserActivity$populateChooser$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Ldev/czlucius/gctf23challenge/UserActivity$populateChooser$1;-><init>(Ldev/czlucius/gctf23challenge/UserActivity;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final requestFlag(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Ldev/czlucius/gctf23challenge/UserActivity$requestFlag$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ldev/czlucius/gctf23challenge/UserActivity$requestFlag$1;

    iget v1, v0, Ldev/czlucius/gctf23challenge/UserActivity$requestFlag$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Ldev/czlucius/gctf23challenge/UserActivity$requestFlag$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Ldev/czlucius/gctf23challenge/UserActivity$requestFlag$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Ldev/czlucius/gctf23challenge/UserActivity$requestFlag$1;

    invoke-direct {v0, p0, p1}, Ldev/czlucius/gctf23challenge/UserActivity$requestFlag$1;-><init>(Ldev/czlucius/gctf23challenge/UserActivity;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Ldev/czlucius/gctf23challenge/UserActivity$requestFlag$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 124
    iget v2, v0, Ldev/czlucius/gctf23challenge/UserActivity$requestFlag$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 125
    new-instance p1, Lokhttp3/OkHttpClient;

    invoke-direct {p1}, Lokhttp3/OkHttpClient;-><init>()V

    .line 126
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 127
    sget-object v5, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v6, "application/json; charset=utf-8"

    invoke-virtual {v5, v6}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v5

    .line 128
    sget-object v6, Ldev/czlucius/gctf23challenge/CipherTools;->INSTANCE:Ldev/czlucius/gctf23challenge/CipherTools;

    move-object v7, p0

    check-cast v7, Landroid/content/Context;

    invoke-virtual {v6, v7}, Ldev/czlucius/gctf23challenge/CipherTools;->getServerToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_5

    .line 130
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Ldev/czlucius/gctf23challenge/UserActivity$requestFlag$2;

    invoke-direct {v2, p0, v7}, Ldev/czlucius/gctf23challenge/UserActivity$requestFlag$2;-><init>(Ldev/czlucius/gctf23challenge/UserActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iput v4, v0, Ldev/czlucius/gctf23challenge/UserActivity$requestFlag$1;->label:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 138
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 142
    :cond_5
    sget-object v4, Ldev/czlucius/gctf23challenge/CipherTools;->INSTANCE:Ldev/czlucius/gctf23challenge/CipherTools;

    invoke-virtual {v4}, Ldev/czlucius/gctf23challenge/CipherTools;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    .line 143
    sget-object v8, Ldev/czlucius/gctf23challenge/CipherTools;->INSTANCE:Ldev/czlucius/gctf23challenge/CipherTools;

    invoke-virtual {v8, v4}, Ldev/czlucius/gctf23challenge/CipherTools;->getPem(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "publicKey"

    .line 144
    invoke-virtual {v2, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    sget-object v4, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, "jsonBody.toString()"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v2, v5}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Ldev/czlucius/gctf23challenge/UserActivity;->getHOST_URL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/flag"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 148
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "requestFlag: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "UserActivity"

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    .line 150
    invoke-virtual {v5, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Bearer "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Authorization"

    invoke-virtual {v4, v6, v5}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    .line 152
    invoke-virtual {v4, v2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 153
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 154
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 156
    :try_start_1
    invoke-virtual {p1, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    iput-object p1, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 157
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Ldev/czlucius/gctf23challenge/UserActivity$requestFlag$3;

    invoke-direct {v2, v4, p0, v7}, Ldev/czlucius/gctf23challenge/UserActivity$requestFlag$3;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ldev/czlucius/gctf23challenge/UserActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iput v3, v0, Ldev/czlucius/gctf23challenge/UserActivity$requestFlag$1;->label:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v1, :cond_6

    return-object v1

    .line 177
    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 174
    :goto_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 175
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final requestToken()V
    .locals 11

    .line 183
    new-instance v4, Lokhttp3/OkHttpClient;

    invoke-direct {v4}, Lokhttp3/OkHttpClient;-><init>()V

    .line 184
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 185
    sget-object v0, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v2, "application/json; charset=utf-8"

    invoke-virtual {v0, v2}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    .line 187
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lkotlin/coroutines/CoroutineContext;

    const/4 v8, 0x0

    new-instance v9, Ldev/czlucius/gctf23challenge/UserActivity$requestToken$1;

    const/4 v5, 0x0

    move-object v0, v9

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Ldev/czlucius/gctf23challenge/UserActivity$requestToken$1;-><init>(Lorg/json/JSONObject;Lokhttp3/MediaType;Ldev/czlucius/gctf23challenge/UserActivity;Lokhttp3/OkHttpClient;Lkotlin/coroutines/Continuation;)V

    move-object v0, v9

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
