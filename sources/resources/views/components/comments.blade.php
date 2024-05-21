<div class="comments">

    <!-- Przykładowe wartości -->
    @php
        $comments = $comments ?? [
            (object)[
                'id' => 1,
                'user_name' => 'Przykładowy user',
                'content' => 'To jest przykładowy komentarz.',
            ],
        ];
    @endphp

    @forelse($comments as $comment)
        <div class="comment mb-4 border-b pb-4">
            <h3 class="text-lg mb-2">{{ $comment->user_name }}</h3> <!-- zakładamy, że komentarz ma pole user_name -->
            <p>{{ $comment->content }}</p> <!-- zakładamy, że komentarz ma pole content -->
        </div>
    @empty
        <p>Nie ma jeszcze żadnych komentarzy.</p>
    @endforelse
</div>
