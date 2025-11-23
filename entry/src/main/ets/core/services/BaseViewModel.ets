import { SongModel } from '../models/SongModel';

export class BaseViewModel {
  songList: SongModel[] =
    [new SongModel('Dream It Possible', 'Delacey', 'Delacey.flac'),
      new SongModel('Happy', 'DJ Happy', 'happy.mp3'),
      new SongModel('House', 'Earth', 'house.mp3'),
      new SongModel('Space', 'DJ Space', 'space.mp3')
    ];
}
